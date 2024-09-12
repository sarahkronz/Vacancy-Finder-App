class Vacancy {
  final String job_id;
  final String title;
  final String company;
  final String location;
  final String description;
  final String long_description;
  final String salary;
  final String date_posted;
  final String image_url;

  Vacancy({
    required this.job_id,
    required this.title,
    required this.company,
    required this.location,
    required this.description,
    required this.long_description,
    required this.salary,
    required this.date_posted,
    required this.image_url,
  });

  factory Vacancy.fromJson(Map<String, dynamic> json) {
    return Vacancy(
      job_id: json['job_id'],
      title: json['title'],
      company: json['company'],
      location: json['location'],
      description: json['description'],
      long_description: json['long_description'],
      salary: json['salary'],
      date_posted: json['date_posted'],
      image_url: json['image_url'],
    );
  }
}
