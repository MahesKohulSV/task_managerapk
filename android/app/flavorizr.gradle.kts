import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.spowerz.taskmanager.dev"
            resValue(type = "string", name = "app_name", value = "Task Manager Dev")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.spowerz.taskmanager"
            resValue(type = "string", name = "app_name", value = "Task Manager")
        }
    }
}