Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA4A597
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 09:34:33 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [5.9.151.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7885E1F2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 09:34:33 +0000 (UTC)
Message-ID: <1439285668.2384.6.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Bjorn Andersson <bjorn.andersson@sonymobile.com>, Rob Herring
	<robherring2@gmail.com>
Date: Tue, 11 Aug 2015 11:34:28 +0200
In-Reply-To: <20150731165645.GH6519@usrtlx11787.corpusers.net>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<20150728230743.GO4753@usrtlx11787.corpusers.net>
	<CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
	<20150731165645.GH6519@usrtlx11787.corpusers.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2015-07-31 at 09:56 -0700, Bjorn Andersson wrote:
> 
> For now I've only tested this on SDIO based bcm devices though, the
> latest batch are PCIe; so we have to get back to that...
> 

Are the PCIe ones also bcmdhd? Until recently, all I knew was that the
PCIe ones were softmac, i.e. bcmsmac (in mainline) or not supported at
all. Are there fullmac PCIe ones now?

johannes
