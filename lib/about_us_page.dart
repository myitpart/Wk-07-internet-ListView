import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset('assets/images/cs_2018_crop.jpg'),
            const Text(
              'Department of Computer and Information Science',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'ก่อตั้งขึ้นในปีพุทธศักราช 2536 ปัจจุบัน ภาควิชา สังกัดอยู่คณะวิทยาศาสตร์ประยุกต์ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ มีการเรียนการสอนใน 4 หลักสูตร 3 ระดับ สนับสนุนการเรียนการสอนให้มีความสามารถทั้งทฤษฎีและปฏิบัติ มีความร่วมมือกับหน่วยงานรัฐและเอกชน สนับสนุนการปฏิบัติงานสหกิจศึกษาทั้งในและต่างประเทศ',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
