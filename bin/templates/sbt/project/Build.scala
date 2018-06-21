import sbt.Keys._
import sbt.Package.ManifestAttributes
import sbt._

object Build extends AutoPlugin {

  override def trigger = allRequirements

  override def projectSettings =
    Vector(
      resolvers ++= Seq {
        "Local Maven Repository" at "file://"+Path.userHome.absolutePath+"/.m2/repository"
      },
      organization := "de.codeptibull",
      version := version.in(ThisBuild).value,
      scalaVersion := Version.Scala,
      crossScalaVersions := Vector(scalaVersion.value),
      scalacOptions ++= Vector(
        "-unchecked",
        "-deprecation",
        "-language:_",
        "-target:jvm-1.8",
        "-encoding", "UTF-8"
      ),
      unmanagedSourceDirectories.in(Compile) := Vector(scalaSource.in(Compile).value),
      unmanagedSourceDirectories.in(Test) := Vector(scalaSource.in(Test).value)
    )
}
