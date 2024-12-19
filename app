class Pyramid:
    def __init__(self, base_area: float, height: float):
        self.__base_area = base_area #площадь
        self.__height = height #высота

    # получение значения площади
    @property
    def base_area(self):
        return self.__base_area

    # получение значения высоты
    @property
    def height(self):
        return self.__height

    # задание значения площади
    @base_area.setter
    def base_area(self, input_base_area: float):
        self.__base_area = input_base_area

    # задание значения высоты
    @height.setter
    def height(self, input_height: float):
        self.__height = input_height

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
