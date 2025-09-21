import '../extensions/translation/translation.dart';

class Localization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_us': {
          'app.name': 'Hellow Pvt. Ltd.',
          'common.email': 'Email',
          'common.name': 'Name',
          'common.heading': 'See what new rewards are on offer!',
          'common.signupTitle': 'Create New Account',
          'common.signupDesc':
              'Set up your username and password. You can always change it later.',
          'common.signinTitle': 'Welcome Back',
          'common.signinDesc':
              'Log in to your account using email or social networks',
          'common.loginWithFb': 'Login with Facebook',
          'common.loginWithApple': 'Login with Apple',
          'common.loginWithGoogle': 'Login with Google',
          'common.enterYourPass': 'Enter your password',
          'common.enterYourEmail': 'Enter your email',
          'common.enterYourName': 'Enter your name',
          'common.phoneNumber': 'Phone Number',
          'common.emailEx': 'smithmate@example.com',
          'common.continue': 'Continue',
          'common.forgotPass': 'Forgot Password?',
          'common.newAccountMsg': 'Didn’t have account?',
          'common.alreadyHaveAccount': 'Already have an account?',
          'common.socialSigninMsg': 'Or continue with social account',
          'common.resetPass': 'Reset password',
          'common.resetPassCaption':
              'To reset your password, enter the email associated with your account. We will send you a one time 6 digit code.',
          'common.sendCode': 'Send Code',
          'common.remeberPass': 'Remember your password?',
          'common.signIn': 'Sign In',
          'common.signUp': 'Signup',
          'common.enterOTP': 'Enter OTP',
          'common.otpsendMsg': 'A verification codes has been sent to',
          'commonverify': 'Verify',
          'common.register': 'Register',
          'common.back': 'Back',
          'common.login': 'Login',
          'common.cancel': 'Cancel',
          'common.next': 'Next',
          'common.skip': 'Skip',
          'common.yes': 'Yes',
          'common.updateNow': 'Update',
          'common.welcomeback': 'Welcom Back,',
          'common.title': 'Update Password',
          'common.currentPass': 'Current password',
          'common.newPass': 'New password',
          'common.confirmNewPass': 'Confirm new password',
          'common.createNewPass': 'Create new password',
          'common.firstName': 'First Name',
          'common.lastName': 'Last Name',
          'common.createPass': 'Create Your Password',
          'common.confirmPass': 'Confirm Password',
          'common.password': 'Password',
          'common.passMsg':
              'Your password must be at least 8 characters, and can’t begin or end with a space.',
          'common.selectCountryCode': 'Select country code',
          'common.verifyEmail': 'Verify Your Email Address',
          'common.verifyEmailDesc':
              'We will send the authentication code to the email address you entered. Do you want continue?',
          'common.didnotReceiveOTP': 'Didn’t receive the code?',
          'common.emailAddress': 'Email Address',
          'common.enterAddress': 'Enter Address',
          'common.resend': 'Resend',
          'common.successAccCreateTitle': 'Account Created Successfully',
          'common.successAccCreateDesc':
              'Your account created successfully. Listen your favourite music',
          'common.passResetSuccess': 'Password Reset Successful',
          'common.passResetSuccessDesc':
              'Your password has been reset successfully. Please log in to your account to continue.',
          'common.fetchLocation': 'Fetch Location',
          'common.address': 'Address',
          'common.addressDetails': 'Address Details',
          'common.addressLine1': 'Address Line 1',
          'common.addressLine2': 'Address Line 2',
          'common.street': 'Street',
          'common.suburbTown': 'Suburb/Town',
          'common.state': 'State',
          'common.country': 'Country',
          'common.pincode': 'Pincode',
          'common.paypal': 'Paypal',
          'card.savedCard': 'Saved Cards',
          'card.addCard': 'Add Card',
          'card.creditDebitCard': 'Credit/Debit Card',
          'card.cardNumber': 'Card Number',
          'card.cardHolderName': 'Card Holder Number',
          'card.expiryDate': 'Expiry Date',
          'card.cvv': 'CVV',
          'error.incorrectOTPDesc': 'Please Enter Valid OTP',
          'error.passMissMatchTitle': 'Password Mismatch',
          'error.passMissMatchDesc':
              'The password and confirmation password do not match.',
          'error.userNotExist': 'User Not Found',
          'error.userNotExistDesc':
              'The specified user does not exist. Please check the entered information and try again.',
          'error.passToShortTitle': 'Password Too Short',
          'error.passToShortDesc':
              'The password must be at least 8 characters long. Please enter a longer password.',
          'success.otpResentTitle': 'OTP Resent',
          'success.otpResentDesc':
              'A new OTP has been sent to your email. Please check your inbox and try again.',
          'logout.title': 'Log out',
          'logout.desc': 'Are you sure you want to logout?',
          'error.nameRequired': 'Name required',
          'error.nameRequiredDesc': 'Please enter valid name.',
          'error.phoneRequired': 'Phone Number required',
          'error.phoneRequiredDesc': 'Please enter valid phone number.',
          'error.userExist': 'User already Exist!',
          'error.userExistDesc': 'User already exists try with another email.',
          'error.loginFailed': 'Login Failed',
          'error.loginFailedDesc':
              'Email not registered. Please register first.',
          'error.emailRequired': 'Email Required',
          'error.emailRequiredDesc': 'Please enter valid email',
          'error.fNameRequired': 'First Name required',
          'error.firstNameRequiredDesc': 'Please enter valid firstname.',
          'error.lastNameRequired': 'Last Name required',
          'error.lastNameRequiredDesc': 'Please enter valid lastname.',
          'error.passRequired': 'Password required',
          'error.passRequiredDesc': 'Please enter valid password.',
          'error.passNotMatched': 'Password not matched',
          'error.passNotMatchedDesc':
              'Password and Confirm password are not matched.',
          'error.passShort': 'Password is to short.',
          'error.passShortDesc': 'At least 8 characters in length.',
          'error.otpRequired': 'OTP Required',
          'error.otpRequiredDesc': 'Please enter valid otp.',
          'confirm.passChangeTitle':
              'Are you sure you want to change your password?',
          'confirm.passChangeDesc':
              'This action cannot be undone. You will need to log in again to proceed.',
          'success.loginSuccess': 'Login Successfully',
          'success.loginSuccessDesc': 'Welcome to the Funzy App!',
          'firebaseError.invalidCred':
              'The password is incorrect. Please try again.',
          'firebaseError.userNotFound':
              'No user found with this email. Please register first.',
          'firebaseError.invalidEmail':
              'The email address is invalid. Please check and try again.',
          'firebaseError.userDisabled':
              'This user has been disabled. Please contact support.',
          'firebaseError.unexpectedError':
              'An unexpected error occurred. Please try again later.',
          'onboarding.title1': 'Best package Delivery just for you',
          'onboarding.title2': 'Track your parcel from anywhere',
          'onboarding.title3': 'Get  your parcel safety on time',
          'onboarding.desc1':
              'It is a long established fact that a reader will be distracted by the readable.',
          'onboarding.desc2':
              'It is a long established fact that a reader will be distracted by the readable.',
          'onboarding.desc3':
              'It is a long established fact that a reader will be distracted by the readable.',
          'profile.myProfile': 'My Profile',
          'profile.editProfile': 'Edit Profile',
          'profile.changePass': 'Change Password',
          'profile.paymentMethod': 'Payment Method',
          'profile.myShipment': 'My Shipment',
          'profile.privacyPolicy': 'Privacy Policy',
          'profile.termcondition': 'Terms & Conditions',
          'profile.conditionofuse': 'Conditions of Uses',
          'profile.logout': 'Logout',
          'myshipment.completedOrder': 'Completed Order',
          'myshipment.orderID': 'Order ID:',
          'myshipment.delivered': 'Delivered',
          'common.writeReview': 'Write a review',
          'profile.tc1': 'Last update: 17/2/2023',
          'profile.tc2':
              'Please read these terms of service, carefully before using our app operated by us.',
          'profile.tc3':
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
          'profile.pp1': 'Last update: 17/2/2023',
          'profile.pp2':
              'Please read these privacy policy, carefully before using our app operated by us.',
          'profile.pp3':
              'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. \nIf you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. \nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. \nThe generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.',
        },
        'fr_fr': {
          'app.name': 'Bonjour Pvt. Ltd.',
          'common.email': 'E-mail',
          'common.name': 'Nom',
          'common.heading': 'Découvrez les nouvelles récompenses proposées !',
          'common.signupTitle': 'Créer un nouveau compte',
          'common.signupDesc':
              'Configurez votre nom d\'utilisateur et votre mot de passe. Vous pouvez toujours le changer plus tard.',
          'common.signinTitle': 'Content de te revoir',
          'common.signinDesc':
              'Connectez-vous à votre compte par e-mail ou sur les réseaux sociaux',
          'common.loginWithFb': 'Se connecter avec Facebook',
          'common.loginWithApple': 'Connectez-vous avec Apple',
          'common.loginWithGoogle': 'Connectez-vous avec Google',
          'common.enterYourPass': 'Tapez votre mot de passe',
          'common.enterYourEmail': 'Entrer votre Email',
          'common.enterYourName': 'Entrez votre nom',
          'common.phoneNumber': 'Numéro de téléphone',
          'common.emailEx': 'smithmate@example.com',
          'common.continue': 'Continuer',
          'common.forgotPass': 'Mot de passe oublié?',
          'common.newAccountMsg': 'Vous n\'aviez pas de compte ?',
          'common.alreadyHaveAccount': 'Vous avez déjà un compte?',
          'common.socialSigninMsg': 'Ou continuer avec le compte social',
          'common.resetPass': 'Réinitialiser le mot de passe',
          'common.resetPassCaption':
              'Pour réinitialiser votre mot de passe, saisissez l\'e-mail associé à votre compte. Nous vous enverrons un code unique à 6 chiffres.',
          'common.sendCode': 'Envoyer le code',
          'common.remeberPass': 'Vous vous souvenez de votre mot de passe ?',
          'common.signIn': 'Se connecter',
          'common.signUp': 'S\'inscrire',
          'common.enterOTP': 'Entrez OTP',
          'common.otpsendMsg': 'Un code de vérification a été envoyé à',
          'commonverify': 'Vérifier',
          'common.register': 'Registre',
          'common.back': 'Dos',
          'common.login': 'Se connecter',
          'common.cancel': 'Annuler',
          'common.next': 'Suivant',
          'common.skip': 'Sauter',
          'common.yes': 'Oui',
          'common.updateNow': 'Mise à jour',
          'common.welcomeback': 'Bon retour,',
          'common.title': 'Mettre à jour le mot de passe',
          'common.currentPass': 'Mot de passe actuel',
          'common.newPass': 'Nouveau mot de passe',
          'common.confirmNewPass': 'Confirmer le nouveau mot de passe',
          'common.createNewPass': 'Créer un nouveau mot de passe',
          'common.firstName': 'Prénom',
          'common.lastName': 'Nom de famille',
          'common.createPass': 'Créez votre mot de passe',
          'common.confirmPass': 'Confirmez le mot de passe',
          'common.password': 'Mot de passe',
          'common.passMsg':
              'Votre mot de passe doit comporter au moins 8 caractères et ne peut ni commencer ni se terminer par un espace.',
          'common.selectCountryCode': 'Sélectionnez le code du pays',
          'common.verifyEmail': 'Vérifiez votre adresse e-mail',
          'common.verifyEmailDesc':
              'Nous enverrons le code d\'authentification à l\'adresse e-mail que vous avez saisie. Voulez-vous continuer ?',
          'common.didnotReceiveOTP': 'Vous n\'avez pas reçu le code ?',
          'common.emailAddress': 'Adresse e-mail',
          'common.enterAddress': 'Entrer l\'adresse',
          'common.resend': 'Renvoyer',
          'common.successAccCreateTitle': 'Compte créé avec succès',
          'common.successAccCreateDesc':
              'Votre compte a été créé avec succès. Écoutez votre musique préférée',
          'common.passResetSuccess': 'Réinitialisation du mot de passe réussie',
          'common.passResetSuccessDesc':
              'Votre mot de passe a été réinitialisé avec succès. Veuillez vous connecter à votre compte pour continuer.',
          'common.fetchLocation': 'Récupérer l\'emplacement',
          'common.address': 'Adresse',
          'common.addressDetails': 'Détails de l\'adresse',
          'common.addressLine1': 'Adresse Ligne 1',
          'common.addressLine2': 'Adresse Ligne 2',
          'common.street': 'Rue',
          'common.suburbTown': 'Banlieue/Ville',
          'common.state': 'État',
          'common.country': 'Pays',
          'common.pincode': 'Code PIN',
          'common.paypal': 'Pay Pal',
          'card.savedCard': 'Cartes enregistrées',
          'card.addCard': 'Ajouter une carte',
          'card.creditDebitCard': 'Carte de crédit / débit',
          'card.cardNumber': 'Numéro de carte',
          'card.cardHolderName': 'Numéro du titulaire de la carte',
          'card.expiryDate': 'Date d\'expiration',
          'card.cvv': 'CVV',
          'error.incorrectOTPDesc': 'Veuillez saisir un OTP valide',
          'error.passMissMatchTitle': 'Non concordance des mots de passe',
          'error.passMissMatchDesc':
              'Le mot de passe et le mot de passe de confirmation ne correspondent pas.',
          'error.userNotExist': 'Utilisateur non trouvé',
          'error.userNotExistDesc':
              'L\'utilisateur demandé n\'existe pas. Veuillez vérifier les informations saisies et réessayer.',
          'error.passToShortTitle': 'Mot de passe trop court',
          'error.passToShortDesc':
              'Le mot de passe doit comporter au moins 8 caractères. Veuillez saisir un mot de passe plus long.',
          'success.otpResentTitle': 'OTP Rejeté',
          'success.otpResentDesc':
              'Un nouvel OTP a été envoyé à votre adresse e-mail. Veuillez vérifier votre boîte de réception et réessayer.',
          'logout.title': 'Se déconnecter',
          'logout.desc': 'Êtes-vous sûr de vouloir vous déconnecter?',
          'error.nameRequired': 'Nom (obligatoire',
          'error.nameRequiredDesc': 'Veuillez entrer un nom valide.',
          'error.phoneRequired': 'Numéro de téléphone requis',
          'error.phoneRequiredDesc':
              's\'il vous plait entrez un numéro de téléphone valide.',
          'error.userExist': 'L\'utilisateur existe déjà!',
          'error.userExistDesc':
              'L\'utilisateur existe déjà, essayez avec un autre email.',
          'error.loginFailed': 'La connexion a échoué',
          'error.loginFailedDesc':
              'Email non enregistré. Veuillez d\'abord vous inscrire.',
          'error.emailRequired': 'Email (requis',
          'error.emailRequiredDesc':
              'Veuillez entrer une adresse e-mail valide',
          'error.fNameRequired': 'Prénom (obligatoire',
          'error.firstNameRequiredDesc': 'Veuillez saisir un prénom valide.',
          'error.lastNameRequired': 'Nom de famille requis',
          'error.lastNameRequiredDesc':
              'Veuillez saisir un nom de famille valide.',
          'error.passRequired': 'Mot de passe requis',
          'error.passRequiredDesc': 'Veuillez entrer un mot de passe valide.',
          'error.passNotMatched': 'Le mot de passe ne correspond pas',
          'error.passNotMatchedDesc':
              'Mot de passe et Confirmer le mot de passe ne correspondent pas.',
          'error.passShort': 'Le mot de passe est trop court.',
          'error.passShortDesc': 'Au moins 8 caractères.',
          'error.otpRequired': 'OTP requis',
          'error.otpRequiredDesc': 'Veuillez saisir un OTP valide.',
          'confirm.passChangeTitle':
              'Etes-vous sûr de vouloir changer votre mot de passe ?',
          'confirm.passChangeDesc':
              'Cette action ne peut pas être annulée. Vous devrez vous reconnecter pour continuer.',
          'success.loginSuccess': 'Connectez-vous avec succès',
          'success.loginSuccessDesc': 'Bienvenue sur l\'application Funzy !',
          'firebaseError.invalidCred':
              'Le mot de passe est incorrect. Veuillez réessayer.',
          'firebaseError.userNotFound':
              'Aucun utilisateur trouvé avec cet email. Veuillez d\'abord vous inscrire.',
          'firebaseError.invalidEmail':
              'L\'adresse mail est invalide. S\'il vous plaît, vérifiez et essayez à nouveau.',
          'firebaseError.userDisabled':
              'Cet utilisateur a été désactivé. Veuillez contacter l\'assistance.',
          'firebaseError.unexpectedError':
              'Une erreur inattendue est apparue. Veuillez réessayer plus tard.',
          'onboarding.title1': 'Meilleur forfait Livraison rien que pour vous',
          'onboarding.title2': 'Suivez votre colis où que vous soyez',
          'onboarding.title3': 'Obtenez votre colis en toute sécurité à temps',
          'onboarding.desc1':
              'C’est un fait établi depuis longtemps qu’un lecteur sera distrait par ce qui est lisible.',
          'onboarding.desc2':
              'C’est un fait établi depuis longtemps qu’un lecteur sera distrait par ce qui est lisible.',
          'onboarding.desc3':
              'C’est un fait établi depuis longtemps qu’un lecteur sera distrait par ce qui est lisible.',
          'profile.myProfile': 'Mon profil',
          'profile.editProfile': 'Editer le profil',
          'profile.changePass': 'Changer le mot de passe',
          'profile.paymentMethod': 'Mode de paiement',
          'profile.myShipment': 'Mon envoi',
          'profile.privacyPolicy': 'politique de confidentialité',
          'profile.termcondition': 'termes et conditions',
          'profile.conditionofuse': 'Conditions d\'utilisation',
          'profile.logout': 'Se déconnecter',
          'myshipment.completedOrder': 'Commande terminée',
          'myshipment.orderID': 'Numéro de commande:',
          'myshipment.delivered': 'Livré',
          'common.writeReview': 'Écrire une critique',
          'profile.tc1': 'Dernière mise à jour : 17/2/2023',
          'profile.tc2':
              'Veuillez lire attentivement ces conditions d\'utilisation avant d\'utiliser notre application que nous exploitons.',
          'profile.tc3':
              'C\'est un fait établi depuis longtemps qu\'un lecteur sera distrait par le contenu lisible d\'une page lorsqu\'il examinera sa mise en page. L\'intérêt d\'utiliser le Lorem Ipsum est qu\'il a une distribution de lettres plus ou moins normale, par opposition à l\'utilisation de « Contenu ici, contenu ici », ce qui donne l\'impression qu\'il s\'agit d\'un anglais lisible. De nombreux logiciels de publication assistée par ordinateur et éditeurs de pages Web utilisent désormais Lorem Ipsum comme modèle de texte par défaut, et une recherche sur « lorem ipsum » permettra de découvrir de nombreux sites Web encore à leurs balbutiements. Différentes versions ont évolué au fil des années, parfois par accident, parfois volontairement (humour injecté, etc.).',
          'profile.pp1': 'Dernière mise à jour : 17/2/2023',
          'profile.pp2':
              'Veuillez lire attentivement cette politique de confidentialité avant d\'utiliser notre application que nous exploitons.',
          'profile.pp3':
              'Il existe de nombreuses variantes de passages du Lorem Ipsum disponibles, mais la majorité ont subi des altérations sous une forme ou une autre, par injection d\'humour ou par des mots aléatoires qui ne semblent même pas légèrement crédibles. \nSi vous comptez utiliser un passage du Lorem Ipsum, vous devez vous assurer qu\'il n\'y a rien d\'embarrassant caché au milieu du texte. \nTous les générateurs Lorem Ipsum sur Internet ont tendance à répéter des morceaux prédéfinis si nécessaire, ce qui en fait le premier véritable générateur sur Internet. Il utilise un dictionnaire de plus de 200 mots latins, combiné à une poignée de structures de phrases modèles, pour générer du Lorem Ipsum qui semble raisonnable. \nLe Lorem Ipsum généré est donc toujours exempt de répétitions, d\'humour injecté, de mots non caractéristiques, etc.',
        },
        'zh-hans_cn': {
          'app.name': '你好列兵。有限公司',
          'common.email': '电子邮件',
          'common.name': '姓名',
          'common.heading': '看看有哪些新奖励！',
          'common.signupTitle': '建立新帐户',
          'common.signupDesc': '设置您的用户名和密码。您以后随时可以更改它。',
          'common.signinTitle': '欢迎回来',
          'common.signinDesc': '使用电子邮件或社交网络登录您的帐户',
          'common.loginWithFb': '使用 Facebook 登录',
          'common.loginWithApple': '使用苹果登录',
          'common.loginWithGoogle': '使用谷歌登录',
          'common.enterYourPass': '输入您的密码',
          'common.enterYourEmail': '输入你的电子邮箱',
          'common.enterYourName': '输入你的名字',
          'common.phoneNumber': '电话号码',
          'common.emailEx': 'smithmate@example.com',
          'common.continue': '继续',
          'common.forgotPass': '忘记密码？',
          'common.newAccountMsg': '没有帐户？',
          'common.alreadyHaveAccount': '已经有帐户？',
          'common.socialSigninMsg': '或继续使用社交帐户',
          'common.resetPass': '重设密码',
          'common.resetPassCaption':
              '要重置您的密码，请输入与您的帐户关联的电子邮件。我们将向您发送一次性 6 位数代码。',
          'common.sendCode': '发送代码',
          'common.remeberPass': '还记得您的密码吗？',
          'common.signIn': '登入',
          'common.signUp': '报名',
          'common.enterOTP': '输入一次性密码',
          'common.otpsendMsg': '验证码已发送至',
          'commonverify': '核实',
          'common.register': '登记',
          'common.back': '后退',
          'common.login': '登录',
          'common.cancel': '取消',
          'common.next': '下一个',
          'common.skip': '跳过',
          'common.yes': '是的',
          'common.updateNow': '更新',
          'common.welcomeback': '欢迎回来，',
          'common.title': '更新密码',
          'common.currentPass': '当前密码',
          'common.newPass': '新密码',
          'common.confirmNewPass': '确认新密码',
          'common.createNewPass': '创建新密码',
          'common.firstName': '名',
          'common.lastName': '姓',
          'common.createPass': '创建你的密码',
          'common.confirmPass': '确认密码',
          'common.password': '密码',
          'common.passMsg': '您的密码必须至少包含 8 个字符，并且不能以空格开头或结尾。',
          'common.selectCountryCode': '选择国家代码',
          'common.verifyEmail': '确认你的邮件地址',
          'common.verifyEmailDesc': '我们会将验证码发送至您输入的电子邮件地址。你想继续吗？',
          'common.didnotReceiveOTP': '没有收到代码？',
          'common.emailAddress': '电子邮件地址',
          'common.enterAddress': '输入地址',
          'common.resend': '重发',
          'common.successAccCreateTitle': '账户创建成功',
          'common.successAccCreateDesc': '您的帐户创建成功。听你最喜欢的音乐',
          'common.passResetSuccess': '密码重置成功',
          'common.passResetSuccessDesc': '您的密码已成功重置。请登录您的帐户以继续。',
          'common.fetchLocation': '获取位置',
          'common.address': '地址',
          'common.addressDetails': '详细地址',
          'common.addressLine1': '地址第一行',
          'common.addressLine2': '地址行 2',
          'common.street': '街道',
          'common.suburbTown': '郊区/城镇',
          'common.state': '状态',
          'common.country': '国家',
          'common.pincode': 'PIN码',
          'common.paypal': '贝宝',
          'card.savedCard': '已保存的卡片',
          'card.addCard': '添加卡',
          'card.creditDebitCard': '信用卡/借记卡',
          'card.cardNumber': '卡号',
          'card.cardHolderName': '持卡人号码',
          'card.expiryDate': '到期日',
          'card.cvv': 'CVV',
          'error.incorrectOTPDesc': '请输入有效的一次性密码',
          'error.passMissMatchTitle': '密码不匹配',
          'error.passMissMatchDesc': '密码和确认密码不匹配。',
          'error.userNotExist': '未找到用户',
          'error.userNotExistDesc': '指定的用户不存在。请检查输入的信息并重试。',
          'error.passToShortTitle': '密码太短',
          'error.passToShortDesc': '密码长度必须至少为 8 个字符。请输入更长的密码。',
          'success.otpResentTitle': 'OTP 重新发送',
          'success.otpResentDesc': '新的 OTP 已发送到您的电子邮件。请检查您的收件箱并重试。',
          'logout.title': '登出',
          'logout.desc': '您确定要退出吗？',
          'error.nameRequired': '姓名必填',
          'error.nameRequiredDesc': '请输入有效的姓名。',
          'error.phoneRequired': '需要电话号码',
          'error.phoneRequiredDesc': '请输入有效的电话号码。',
          'error.userExist': '用户已经存在！',
          'error.userExistDesc': '用户已存在，请尝试使用其他电子邮件。',
          'error.loginFailed': '登录失败',
          'error.loginFailedDesc': '电子邮件未注册。请先注册。',
          'error.emailRequired': '需要电子邮件',
          'error.emailRequiredDesc': '请输入有效的电子邮件',
          'error.fNameRequired': '需要名字',
          'error.firstNameRequiredDesc': '请输入有效的名字。',
          'error.lastNameRequired': '需要姓氏',
          'error.lastNameRequiredDesc': '请输入有效的姓氏。',
          'error.passRequired': '要求输入密码',
          'error.passRequiredDesc': '请输入有效的密码。',
          'error.passNotMatched': '密码不匹配',
          'error.passNotMatchedDesc': '密码和确认密码不匹配。',
          'error.passShort': '密码太短。',
          'error.passShortDesc': '长度至少为 8 个字符。',
          'error.otpRequired': '需要一次性密码',
          'error.otpRequiredDesc': '请输入有效的密码。',
          'confirm.passChangeTitle': '您确定要更改密码吗？',
          'confirm.passChangeDesc': '此操作无法撤消。您需要重新登录才能继续。',
          'success.loginSuccess': '登录成功',
          'success.loginSuccessDesc': '欢迎使用有趣的应用程序！',
          'firebaseError.invalidCred': '密码不正确。请再试一次。',
          'firebaseError.userNotFound': '未找到使用此电子邮件的用户。请先注册。',
          'firebaseError.invalidEmail': '电子邮件地址无效。请检查并重试。',
          'firebaseError.userDisabled': '该用户已被禁用。请联系支持人员。',
          'firebaseError.unexpectedError': '一个意料之外的问题发生了。请稍后再试。',
          'onboarding.title1': '最适合您的包裹递送',
          'onboarding.title2': '随时随地追踪您的包裹',
          'onboarding.title3': '按时确保您的包裹安全',
          'onboarding.desc1': '读者会被可读的内容分散注意力，这是一个长期存在的事实。',
          'onboarding.desc2': '读者会被可读的内容分散注意力，这是一个长期存在的事实。',
          'onboarding.desc3': '读者会被可读的内容分散注意力，这是一个长期存在的事实。',
          'profile.myProfile': '我的简历',
          'profile.editProfile': '编辑个人资料',
          'profile.changePass': '更改密码',
          'profile.paymentMethod': '付款方式',
          'profile.myShipment': '我的货件',
          'profile.privacyPolicy': '隐私政策',
          'profile.termcondition': '条款及条件',
          'profile.conditionofuse': '使用条件',
          'profile.logout': '登出',
          'myshipment.completedOrder': '已完成订单',
          'myshipment.orderID': '订单编号：',
          'myshipment.delivered': '发表',
          'common.writeReview': '写评论',
          'profile.tc1': '最后更新：2023 年 2 月 17 日',
          'profile.tc2': '在使用我们运营的应用程序之前，请仔细阅读这些服务条款。',
          'profile.tc3':
              '长期以来的事实是，读者在查看页面布局时会被页面的可读内容分散注意力。使用 Lorem Ipsum 的要点在于，它具有或多或少的字母正态分布，而不是使用“此处内容，此处内容”，使其看起来像可读的英语。许多桌面出版包和网页编辑器现在使用 Lorem Ipsum 作为默认模型文本，搜索“lorem ipsum”将发现许多仍处于起步阶段的网站。多年来，各种版本不断演变，有时是偶然的，有时是故意的（注入幽默等）。',
          'profile.pp1': '最后更新：2023 年 2 月 17 日',
          'profile.pp2': '在使用我们运营的应用程序之前，请仔细阅读这些隐私政策。',
          'profile.pp3':
              '《Lorem Ipsum》的段落有很多变体，但大多数都经过某种形式的改变，通过注入幽默，或随机的单词，看起来甚至不太可信。 \n如果您要使用 Lorem Ipsum 的一段文字，您需要确保文本中间没有隐藏任何令人尴尬的内容。 \n互联网上的所有 Lorem Ipsum 生成器都倾向于根据需要重复预定义的块，这使其成为互联网上第一个真正的生成器。它使用超过 200 个拉丁单词的字典，结合一些模型句子结构，生成看起来合理的 Lorem Ipsum。 \n因此，生成的 Lorem Ipsum 始终不会重复、注入幽默或非特征性词语等。',
        },
      };
  static const appName = 'app.name';
  static const commonEmail = 'common.email';
  static const commonName = 'common.name';
  static const commonHeading = 'common.heading';
  static const commonSignupTitle = 'common.signupTitle';
  static const commonSignupDesc = 'common.signupDesc';
  static const commonSigninTitle = 'common.signinTitle';
  static const commonSigninDesc = 'common.signinDesc';
  static const commonLoginWithFb = 'common.loginWithFb';
  static const commonLoginWithApple = 'common.loginWithApple';
  static const commonLoginWithGoogle = 'common.loginWithGoogle';
  static const commonEnterYourPass = 'common.enterYourPass';
  static const commonEnterYourEmail = 'common.enterYourEmail';
  static const commonEnterYourName = 'common.enterYourName';
  static const commonPhoneNumber = 'common.phoneNumber';
  static const commonEmailEx = 'common.emailEx';
  static const commonContinue = 'common.continue';
  static const commonForgotPass = 'common.forgotPass';
  static const commonNewAccountMsg = 'common.newAccountMsg';
  static const commonAlreadyHaveAccount = 'common.alreadyHaveAccount';
  static const commonSocialSigninMsg = 'common.socialSigninMsg';
  static const commonResetPass = 'common.resetPass';
  static const commonResetPassCaption = 'common.resetPassCaption';
  static const commonSendCode = 'common.sendCode';
  static const commonRemeberPass = 'common.remeberPass';
  static const commonSignIn = 'common.signIn';
  static const commonSignUp = 'common.signUp';
  static const commonEnterOTP = 'common.enterOTP';
  static const commonOtpsendMsg = 'common.otpsendMsg';
  static const commonverify = 'commonverify';
  static const commonRegister = 'common.register';
  static const commonBack = 'common.back';
  static const commonLogin = 'common.login';
  static const commonCancel = 'common.cancel';
  static const commonNext = 'common.next';
  static const commonSkip = 'common.skip';
  static const commonYes = 'common.yes';
  static const commonUpdateNow = 'common.updateNow';
  static const commonWelcomeback = 'common.welcomeback';
  static const commonTitle = 'common.title';
  static const commonCurrentPass = 'common.currentPass';
  static const commonNewPass = 'common.newPass';
  static const commonConfirmNewPass = 'common.confirmNewPass';
  static const commonCreateNewPass = 'common.createNewPass';
  static const commonFirstName = 'common.firstName';
  static const commonLastName = 'common.lastName';
  static const commonCreatePass = 'common.createPass';
  static const commonConfirmPass = 'common.confirmPass';
  static const commonPassword = 'common.password';
  static const commonPassMsg = 'common.passMsg';
  static const commonSelectCountryCode = 'common.selectCountryCode';
  static const commonVerifyEmail = 'common.verifyEmail';
  static const commonVerifyEmailDesc = 'common.verifyEmailDesc';
  static const commonDidnotReceiveOTP = 'common.didnotReceiveOTP';
  static const commonEmailAddress = 'common.emailAddress';
  static const commonEnterAddress = 'common.enterAddress';
  static const commonResend = 'common.resend';
  static const commonSuccessAccCreateTitle = 'common.successAccCreateTitle';
  static const commonSuccessAccCreateDesc = 'common.successAccCreateDesc';
  static const commonPassResetSuccess = 'common.passResetSuccess';
  static const commonPassResetSuccessDesc = 'common.passResetSuccessDesc';
  static const commonFetchLocation = 'common.fetchLocation';
  static const commonAddress = 'common.address';
  static const commonAddressDetails = 'common.addressDetails';
  static const commonAddressLine1 = 'common.addressLine1';
  static const commonAddressLine2 = 'common.addressLine2';
  static const commonStreet = 'common.street';
  static const commonSuburbTown = 'common.suburbTown';
  static const commonState = 'common.state';
  static const commonCountry = 'common.country';
  static const commonPincode = 'common.pincode';
  static const commonPaypal = 'common.paypal';
  static const cardSavedCard = 'card.savedCard';
  static const cardAddCard = 'card.addCard';
  static const cardCreditDebitCard = 'card.creditDebitCard';
  static const cardCardNumber = 'card.cardNumber';
  static const cardCardHolderName = 'card.cardHolderName';
  static const cardExpiryDate = 'card.expiryDate';
  static const cardCvv = 'card.cvv';
  static const errorIncorrectOTPDesc = 'error.incorrectOTPDesc';
  static const errorPassMissMatchTitle = 'error.passMissMatchTitle';
  static const errorPassMissMatchDesc = 'error.passMissMatchDesc';
  static const errorUserNotExist = 'error.userNotExist';
  static const errorUserNotExistDesc = 'error.userNotExistDesc';
  static const errorPassToShortTitle = 'error.passToShortTitle';
  static const errorPassToShortDesc = 'error.passToShortDesc';
  static const successOtpResentTitle = 'success.otpResentTitle';
  static const successOtpResentDesc = 'success.otpResentDesc';
  static const logoutTitle = 'logout.title';
  static const logoutDesc = 'logout.desc';
  static const errorNameRequired = 'error.nameRequired';
  static const errorNameRequiredDesc = 'error.nameRequiredDesc';
  static const errorPhoneRequired = 'error.phoneRequired';
  static const errorPhoneRequiredDesc = 'error.phoneRequiredDesc';
  static const errorUserExist = 'error.userExist';
  static const errorUserExistDesc = 'error.userExistDesc';
  static const errorLoginFailed = 'error.loginFailed';
  static const errorLoginFailedDesc = 'error.loginFailedDesc';
  static const errorEmailRequired = 'error.emailRequired';
  static const errorEmailRequiredDesc = 'error.emailRequiredDesc';
  static const errorFNameRequired = 'error.fNameRequired';
  static const errorFirstNameRequiredDesc = 'error.firstNameRequiredDesc';
  static const errorLastNameRequired = 'error.lastNameRequired';
  static const errorLastNameRequiredDesc = 'error.lastNameRequiredDesc';
  static const errorPassRequired = 'error.passRequired';
  static const errorPassRequiredDesc = 'error.passRequiredDesc';
  static const errorPassNotMatched = 'error.passNotMatched';
  static const errorPassNotMatchedDesc = 'error.passNotMatchedDesc';
  static const errorPassShort = 'error.passShort';
  static const errorPassShortDesc = 'error.passShortDesc';
  static const errorOtpRequired = 'error.otpRequired';
  static const errorOtpRequiredDesc = 'error.otpRequiredDesc';
  static const confirmPassChangeTitle = 'confirm.passChangeTitle';
  static const confirmPassChangeDesc = 'confirm.passChangeDesc';
  static const successLoginSuccess = 'success.loginSuccess';
  static const successLoginSuccessDesc = 'success.loginSuccessDesc';
  static const firebaseErrorInvalidCred = 'firebaseError.invalidCred';
  static const firebaseErrorUserNotFound = 'firebaseError.userNotFound';
  static const firebaseErrorInvalidEmail = 'firebaseError.invalidEmail';
  static const firebaseErrorUserDisabled = 'firebaseError.userDisabled';
  static const firebaseErrorUnexpectedError = 'firebaseError.unexpectedError';
  static const onboardingTitle1 = 'onboarding.title1';
  static const onboardingTitle2 = 'onboarding.title2';
  static const onboardingTitle3 = 'onboarding.title3';
  static const onboardingDesc1 = 'onboarding.desc1';
  static const onboardingDesc2 = 'onboarding.desc2';
  static const onboardingDesc3 = 'onboarding.desc3';
  static const profileMyProfile = 'profile.myProfile';
  static const profileEditProfile = 'profile.editProfile';
  static const profileChangePass = 'profile.changePass';
  static const profilePaymentMethod = 'profile.paymentMethod';
  static const profileMyShipment = 'profile.myShipment';
  static const profilePrivacyPolicy = 'profile.privacyPolicy';
  static const profileTermcondition = 'profile.termcondition';
  static const profileConditionofuse = 'profile.conditionofuse';
  static const profileLogout = 'profile.logout';
  static const myshipmentCompletedOrder = 'myshipment.completedOrder';
  static const myshipmentOrderID = 'myshipment.orderID';
  static const myshipmentDelivered = 'myshipment.delivered';
  static const commonWriteReview = 'common.writeReview';
  static const profileTc1 = 'profile.tc1';
  static const profileTc2 = 'profile.tc2';
  static const profileTc3 = 'profile.tc3';
  static const profilePp1 = 'profile.pp1';
  static const profilePp2 = 'profile.pp2';
  static const profilePp3 = 'profile.pp3';
}
