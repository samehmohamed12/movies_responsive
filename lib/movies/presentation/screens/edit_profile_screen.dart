// import 'package:hamo/core/widget/buttons/custom_elevated_button.dart';
// import 'package:hamo/core/widget/buttons/custom_text_button.dart';
// import 'package:hamo/core/widget/custom_divider.dart';
// import 'package:hamo/core/widget/images/custom_avatar_image.dart';
// import 'package:hamo/core/widget/text_form_field/custom_text_form_field.dart';
//
// import '../../../core/utils/import_file.dart';
// import '../components/text_form_filed.dart';
//
// class EditProfileScreen extends StatelessWidget {
//   EditProfileScreen({Key? key}) : super(key: key);
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController countryController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     nameController.text = 'sameh mohamed ali';
//     emailController.text = 'Brandivokers@gmail.com';
//     phoneController.text = '+1098734421';
//     countryController.text = 'United States of America';
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.navigate_before_outlined),
//           color: Colors.black,
//         ),
//         title: CustomText.bodyMedium('Edit Profile'),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             CustomDivider(
//               color: Colors.grey.shade300,
//             ),
//             CustomAvatarImage(
//               'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
//               radius: AppSizes.br40,
//             ),
//             CustomTextButton(
//                 textButton: 'Change profile photo', onPressed: () {}),
//             CustomDivider(
//               color: Colors.grey.shade300,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   const Text('Name'),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Expanded(
//                     child: TextFormField(
//                       controller: nameController,
//                       decoration: const InputDecoration(
//                         focusedBorder:UnderlineInputBorder( borderSide: BorderSide(color: Colors.grey)) ,
//                         enabledBorder:UnderlineInputBorder( borderSide: BorderSide(color: Colors.grey)) ,
//                         border: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.grey)),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   const Text('Email'),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Expanded(
//                     child: TextFormField(
//                       controller: emailController,
//                       decoration: const InputDecoration(
//                         focusedBorder:UnderlineInputBorder( borderSide: BorderSide(color: Colors.grey)) ,
//                         enabledBorder:UnderlineInputBorder( borderSide: BorderSide(color: Colors.grey)) ,
//                         border: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.grey)),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   const Text('Phone'),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Expanded(
//                     child: TextFormField(
//                       textAlign: TextAlign.start,
//                       controller: phoneController,
//                       decoration: const InputDecoration(
//                         focusedBorder:UnderlineInputBorder( borderSide: BorderSide(color: Colors.grey)) ,
//                         enabledBorder:UnderlineInputBorder( borderSide: BorderSide(color: Colors.grey)) ,
//                         border: UnderlineInputBorder(
//                             borderSide: BorderSide(color: Colors.grey)),
//                       ),
//                     ),
//                   ),
//                   IconButton(onPressed: (){}, icon: Icon(Icons.add_circle))
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 children: [
//                   const Text('Country'),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   Expanded(
//                     child: TextFormField(
//                       textAlign: TextAlign.start,
//                       controller: countryController,
//                     ),
//                   ),
//
//                 ],
//               ),
//             ),
//             CustomDivider(color: Colors.grey),
//             CustomElevatedButton(onPressed: (){}, text: 'Update Profile')
//           ],
//         ),
//       ),
//     );
//   }
// }
