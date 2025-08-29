# VPN Indicator

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/iwizard7/vpn-indicator/releases)
[![macOS](https://img.shields.io/badge/platform-macOS%2012+-orange.svg)](https://github.com/iwizard7/vpn-indicator)
[![Swift](https://img.shields.io/badge/swift-5.9+-brightgreen.svg)](https://swift.org)
[![License](https://img.shields.io/badge/license-MIT-lightgrey.svg)](LICENSE)

Мощный индикатор статуса VPN для macOS с широкими возможностями настройки и автоматизации.

## ✨ Возможности

### 🎯 Основные функции
- **Мониторинг VPN статуса** в реальном времени
- **Индикатор в меню-баре** с цветными иконками
- **Звук при отключении** VPN
- **Уведомления** о изменениях статуса
- **Автоматический запуск** при входе в систему

### 🎨 Кастомизация
- **10 тем иконок**: Circles, Locks, Shields, Power, WiFi, Checkmarks, Hearts, Stars, Gray, Minimal
- **Пользовательские иконки** - установите свои emoji
- **Выбор звука** отключения (Basso, Funk, Ping, Purr, Tink, None)
- **Настраиваемые уведомления**

### 🚀 Управление VPN
- **Автоматическое обнаружение** установленных VPN клиентов
- **Быстрый запуск** VPN приложений
- **Управление подключением** через меню
- **Поддержка популярных VPN**: V2Box, V2RayU, ClashX, ProtonVPN, NordVPN и др.

### 📊 Статистика и мониторинг
- **Время подключения** с момента активации
- **Статистика трафика** (загрузка/выгрузка)
- **IP адрес** VPN соединения
- **Умные уведомления** (длительные сессии, большой трафик)

## 🛠️ Установка

### Требования
- macOS 12.0 или новее
- Swift 5.9+
- Xcode 14+ (для разработки)

### Сборка из исходников
```bash
# Клонировать репозиторий
git clone https://github.com/iwizard7/vpn-indicator.git
cd vpn-indicator

# Собрать проект
swift build

# Запустить
swift run
```

### Автоматический запуск
Приложение поддерживает автоматический запуск при входе в систему через Launch Agents.

## 📖 Использование

### Основное меню
1. **Кликните на иконку** в меню-баре
2. Выберите **Icon Theme** для изменения внешнего вида
3. Настройте **Disconnect Sound** для звукового сигнала
4. Включите **Notifications** для уведомлений
5. Используйте **VPN Management** для управления клиентами

### Темы иконок
- 🔴 🟢 **Circles** - классические цветные круги
- 🔒 🔓 **Locks** - замки (открыт/закрыт)
- 🛡️ ❌ **Shields** - щиты для защиты
- ⚡ 💤 **Power** - питание (включено/спящий режим)
- 📶 ❌ **WiFi** - беспроводная сеть
- ✅ ❌ **Checkmarks** - галочки
- 💚 💔 **Hearts** - сердечки
- ⭐ ❌ **Stars** - звездочки
- ⚫ ⚪ **Gray** - серые круги
- ● ○ **Minimal** - минималистичные точки

### Пользовательские иконки
1. Выберите **Custom Icons** → **Set Custom Icons**
2. Введите emoji для каждого статуса
3. Нажмите **Set Icons**

## 🔧 Настройка

### Для разработчиков
```swift
// Изменение интервала проверки статуса
private let statusCheckInterval: TimeInterval = 3.0

// Добавление новой темы иконок
case "newtheme":
    return ("🎯", "⏳", "❌")
```

### Добавление поддержки нового VPN
```swift
let vpnClients = [
    ("NewVPN", "/Applications/NewVPN.app", "NewVPN"),
    // ... добавить в список
]
```

## 🛡️ Безопасность

- **Нет хранения паролей** или учетных данных
- **Локальные настройки** хранятся в UserDefaults
- **Нет сетевых запросов** к внешним серверам
- **Открытый исходный код** для аудита безопасности

## 📋 Совместимость

### Поддерживаемые VPN клиенты
- ✅ V2Box
- ✅ V2RayU
- ✅ ClashX / ClashX Pro
- ✅ Surge
- ✅ ShadowsocksX-NG
- ✅ ProtonVPN
- ✅ ExpressVPN
- ✅ NordVPN
- ✅ Tunnelblick
- ✅ Viscosity
- ✅ OpenConnect

### Системные требования
- **macOS**: 12.0+
- **Архитектура**: Intel, Apple Silicon
- **Память**: ~10MB RAM
- **Диск**: ~5MB

## 🐛 Устранение неполадок

### Иконка не отображается
```bash
# Проверить статус
scutil --nc list

# Перезапустить приложение
pkill -f VPNIndicator
swift run
```

### Неправильный статус VPN
- Убедитесь, что VPN клиент запущен
- Проверьте системные настройки сети
- Перезапустите приложение

### Проблемы с уведомлениями
- Проверьте настройки уведомлений в Системных настройках
- Убедитесь, что приложение имеет права на уведомления

## 🤝 Вклад в проект

1. Fork репозиторий
2. Создайте feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit изменения (`git commit -m 'Add some AmazingFeature'`)
4. Push в branch (`git push origin feature/AmazingFeature`)
5. Создайте Pull Request

## 📄 Лицензия

Этот проект распространяется под лицензией MIT. Подробности в файле [LICENSE](LICENSE).

## 🙏 Благодарности

- Apple за macOS и Swift
- Сообщество разработчиков за вклад в экосистему
- Пользователям за обратную связь и предложения

---

**VPN Indicator** - ваш надежный помощник в мире VPN! 🔒✨