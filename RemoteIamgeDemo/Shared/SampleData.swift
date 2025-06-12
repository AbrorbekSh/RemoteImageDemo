import Foundation

struct SampleData {
    // MARK: - Test Image URLs (for loading state simulation)
    static let largeImageURL_30MB = URL(string: "https://sample-videos.com/img/Sample-jpg-image-30mb.jpg")!
    static let mediumImageURL_10MB = URL(string: "https://sample-videos.com/img/Sample-jpg-image-10mb.jpg")!
    static let smallImageURL_500KB = URL(string: "https://sample-videos.com/img/Sample-jpg-image-500kb.jpg")!
    
    static let catImage30MB = URL(string: "https://drive.google.com/uc?export=download&id=1pycvUuIFz-ZA9vmKIP05aptYouFwvXQS")!
    
    // MARK: - Gallery Image URLs
    static let imageGallery: [String] = [
        "https://images.unsplash.com/photo-1497034825429-c343d7c6a68f?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1555529211-3237f6e13d33?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTJ8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1549395156-e0c1fe6fc7a5?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aWNlJTIwY3JlYW18ZW58MHx8MHx8fDA%3D",
        "https://images.unsplash.com/photo-1570197788417-0e82375c9371?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8aWNlJTIwY3JlYW18ZW58MHx8MHx8fDA%3D",
        "https://plus.unsplash.com/premium_photo-1690440686714-c06a56a1511c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aWNlJTIwY3JlYW18ZW58MHx8MHx8fDA%3D",
        "https://images.unsplash.com/photo-1576506295286-5cda18df43e7?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1590080962330-747c6aba8028?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1629385697093-57be2cc97fa6?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1562790879-dfde82829db0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aWNlJTIwY3JlYW18ZW58MHx8MHx8fDA%3D",
        "https://plus.unsplash.com/premium_photo-1671405925193-39b5ef30c026?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1477505982272-ead89926a577?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://plus.unsplash.com/premium_photo-1661288452010-951ca57991fc?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://plus.unsplash.com/premium_photo-1678198786424-c2cc6593f59c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1532678465554-94846274c297?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1597249536924-b226b1a1259d?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1501118347049-aba774d9e0a0?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1496533141630-d6731a403292?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://plus.unsplash.com/premium_photo-1669905375045-990742dc0ca4?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDN8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1534706936160-d5ee67737249?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDV8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1579954115567-dff2eeb6fdeb?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTJ8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://plus.unsplash.com/premium_photo-1733306657240-a398488ea835?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1557142046-c704a3adf364?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1619439092297-095834c5b4dc?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1594501504042-79b068f8b471?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njh8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1591636687027-a157c53387cd?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjF8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1579954115563-e72bf1381629?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjV8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1561588012-17a0e1119c0e?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzN8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1563252781-2f76e089e889?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njl8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1633933037611-f26e54366832?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjZ8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1554521718-e87e96d67ca5?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzh8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1556682851-c4580670113a?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzR8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://plus.unsplash.com/premium_photo-1664391698459-2281b443d16c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODN8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1516559828984-fb3b99548b21?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODV8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1501118914527-baeb72850258?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzd8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1614014077943-840960ce6694?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODR8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1543255006-d6395b6f1171?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODl8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1587563974670-b5181b459b30?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODJ8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1636564499112-6113e73c504a?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODh8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1556909044-5c0e1da96641?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODZ8fGljZSUyMGNyZWFtfGVufDB8fDB8fHww",
        "https://images.unsplash.com/photo-1564919126030-8dbf63751ec2?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAyfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1621693129587-48dd0d0aa740?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA1fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1622090860720-c4a77e146284?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA4fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1529790912688-db5fec227b5a?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA5fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1684135347630-82c37ed5c7b8?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE0fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1627145607871-3053762c1130?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTEyfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1695927468636-a1ff3bcfff29?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTMxfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1572490122747-3968b75cc699?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTMyfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1627145607866-9ec1d9ec3342?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTM3fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1591187954401-bcd97ec89785?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQxfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1625234969503-49c7f28bc6ec?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTMzfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1468769398733-d97298de3a06?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQ0fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1610643871298-7a097d44b65e?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQyfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1675279010961-8a6679ff03da?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQzfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1664392060458-fb1908b79323?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQ3fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1583052606401-ba82199fffc9?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTUwfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1526549518783-1763d32c7763?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTU4fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1570557237290-0f3a3dfd917c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTU2fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1548365327-ba68b3991b34?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTcyfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1713805045579-7d46ab8c3e49?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTcxfHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
        "https://images.unsplash.com/photo-1701261919026-d6ce6cb9be0f?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTY0fHxpY2UlMjBjcmVhbXxlbnwwfHwwfHx8MA%3D%3D",
    ]
    
    static var validGalleryImageURLs: [URL] {
        imageGallery.compactMap { URL(string: $0) }
    }
}
