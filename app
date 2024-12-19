    @staticmethod
    def about():
        return "Команда из 3 разработчиков: реализуем программу для расчета объема правильной пирамиды."
        
    
class VolumePyramid(Pyramid):
    # получение значения Объема
    def calculate_volume(self):
        return (1 / 3) * self.base_area * self.height
    def __str__(self):
        return f"Pyramid with base area {self.base_area} and height {self.height}."
if __name__ == "__main__":
    pyramid = VolumePyramid(base_area=25.0, height=10.0)
    print(pyramid)
    print(f"Volume: {pyramid.calculate_volume():.2f}")
