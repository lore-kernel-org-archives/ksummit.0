Return-Path: <linville@tuxdriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0EDCD4D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 15:30:26 +0000 (UTC)
Received: from smtp.tuxdriver.com (charlotte.tuxdriver.com [70.61.120.58])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BB3381B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  3 Aug 2015 15:30:21 +0000 (UTC)
Date: Mon, 3 Aug 2015 11:29:02 -0400
From: "John W. Linville" <linville@tuxdriver.com>
To: Tim Bird <tim.bird@sonymobile.com>
Message-ID: <20150803152902.GA3598@tuxdriver.com>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<20150728230743.GO4753@usrtlx11787.corpusers.net>
	<CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
	<55BBAF9B.7010007@sonymobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55BBAF9B.7010007@sonymobile.com>
Cc: =?iso-8859-1?B?IkFuZGVyc3NvbiwgQmr2cm4i?= <Bjorn.Andersson@sonymobile.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 31, 2015 at 10:25:47AM -0700, Tim Bird wrote:

<snip>

> I'm doing some research now on the usefulness of backporting the current
> brcm80211 code to 3.18, which many of the next round of Android phones
> will be using.  This at least exposes the stack to mobile device vendors
> and device owners, who (with some luck) can test it in production settings
> and find deficiencies.
> 
> If we do nothing, then we'll have another full generation of phones
> which focus exclusively on out-of-tree wireless driver code.  This will
> end up delaying the adoption of the mainline driver (in this product
> area) by another few years, IMHO.
> 
> Feedback on the and sanity of this approach are welcome. :-)  If anyone knows
> things about the broadcom driver or the wireless stack that would make this
> backport particularly costly, please let me know.

It probably goes without saying, but you should make sure that
brcm80211 actually supports the chips in use.  Broadcom has not done a
very good job at keeping brcm80211 up-to-date with the hardware that
they actually release for laptops.  Installing out-of-tree Broadcom
wireless drivers on laptops still seems to be a common requirement. :-(

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.
