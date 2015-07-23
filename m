Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 058473EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 12:14:44 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 04B4A14F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 12:14:42 +0000 (UTC)
Date: Thu, 23 Jul 2015 14:14:41 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20150723121441.GB29747@amd>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
Cc: riverful.kim@samsung.com, kyungmin.park@samsung.com,
	John Stultz <john.stultz@linaro.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Bjorn Andersson <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu 2015-07-23 13:21:19, Linus Walleij wrote:
> On Thu, Jul 23, 2015 at 12:57 PM, Pavel Machek <pavel@ucw.cz> wrote:
> 
> > Significant percentage of phones run Linux kernel today, but geting
> > mainline kernel to work on a phone is very hard to do. (So hard, that
> > newest device that is close to working on recent mainline was made in
> > 2009.) There are multiple obstacles, including huge patches from
> > silicon vendors, missing GNU/Linux userspace support that makes kernel
> > testing hard, interfaces unsuitable for phones and power management
> > problems.
> >
> > Interested people:
> >
> > Sebastian Reichel <sre@kernel.org>
> > Pali Rohár <pali.rohar@gmail.com>
> 
> I'm adding Björn Andersson <bjorn.andersson@sonymobile.com> to this list.
> 
> Björn has as of yesterday booted a mainline kernel on the SONY
> Xperia Z3 and his company has demonstrated strong interest in
> getting the mainline kernel to run on their handsets.
> https://plus.google.com/102276447148493441479/posts/amRvpE8piSw

Yes. Plus, there seems to be group at Samsung. Trats is a cellphone iirc.

http://lists.infradead.org/pipermail/linux-arm-kernel/2011-December/078428.html

Signed-off-by: HeungJun, Kim <riverful.kim at samsung.com>
Signed-off-by: Kyungmin Park <kyungmin.park at samsung.com>

									Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
