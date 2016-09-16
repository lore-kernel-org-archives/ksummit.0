Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 913729EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Sep 2016 13:36:53 +0000 (UTC)
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 66F3114B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Sep 2016 13:36:52 +0000 (UTC)
Received: by mail-oi0-f46.google.com with SMTP id r126so111784685oib.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Sep 2016 06:36:52 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4604090.shkXlmNYJ6@wuerfel>
References: <E9D83DEA-B8D1-4E51-AF9C-8C67CFEDCE39@linaro.org>
	<e833f782-4db9-2de2-b7e8-99ddfb998936@sandisk.com>
	<CACRpkdb5+mw5CafFLWKr4vwcTVpO6FWUSiDifDOZ+oXAu_h7+A@mail.gmail.com>
	<4604090.shkXlmNYJ6@wuerfel>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 16 Sep 2016 15:36:51 +0200
Message-ID: <CACRpkdak96WAiFv5Rjm6LaU4kYmwtwGhE+yVt-=xdW9gX1KgKQ@mail.gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	ksummit-discuss@lists.linux-foundation.org,
	Greg KH <gregkh@linuxfoundation.org>, Jens Axboe <axboe@fb.com>,
	hare@suse.de, Tejun Heo <tj@kernel.org>,
	Bart Van Assche <bart.vanassche@sandisk.com>,
	Omar Sandoval <osandov@osandov.com>, Christoph Hellwig <hch@lst.de>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing long-standing
 high-latency problems related to I/O
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 16, 2016 at 1:46 PM, Arnd Bergmann <arnd@arndb.de> wrote:

> What file system did you use for testing, and which tuning
> did you do for your storage devices?

These were all with ext4.

Yours,
Linus Walleij
