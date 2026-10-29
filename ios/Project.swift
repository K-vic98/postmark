import ProjectDescription

let project = Project(
    name: "Postmark",
    settings: .settings(base: ["SWIFT_VERSION": "6.0"]),
    targets: [
        .target(
            name: "Postmark",
            destinations: .iOS,
            product: .app,
            bundleId: "com.victorkudelin.postmark",
            deploymentTargets: .iOS("26.0"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                    "UIApplicationSceneManifest": [
                        "UIApplicationSupportsMultipleScenes": false,
                        "UISceneConfigurations": [
                            "UIWindowSceneSessionRoleApplication": [
                                [
                                    "UISceneConfigurationName": "Default Configuration",
                                    "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate",
                                ],
                            ],
                        ],
                    ],
                ]
            ),
            sources: ["Sources/**"],
            resources: [],
            dependencies: []
        ),
        .target(
            name: "PostmarkTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.victorkudelin.postmark.tests",
            deploymentTargets: .iOS("26.0"),
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [.target(name: "Postmark")]
        ),
    ]
)
