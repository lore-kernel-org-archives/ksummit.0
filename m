Return-Path: <robherring2@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0EF98413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 02:59:52 +0000 (UTC)
Received: from mail-yb0-f195.google.com (mail-yb0-f195.google.com
	[209.85.213.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CAC931E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Aug 2016 02:59:51 +0000 (UTC)
Received: by mail-yb0-f195.google.com with SMTP id e125so1083986ybc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 04 Aug 2016 19:59:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160804102058.GT10376@sirena.org.uk>
References: <CAB=NE6W7utmX7G57LTFXGwe9QY61FS80iAT=mj_+P9oFBsWb9A@mail.gmail.com>
	<20160727192040.GL5537@wotan.suse.de>
	<10281749.h0nm8HgLR9@vostro.rjw.lan>
	<4826466.kMrAaT2rsn@avalon> <87d1lpose8.fsf@intel.com>
	<20160804095049.GA30029@kroah.com>
	<20160804102058.GT10376@sirena.org.uk>
From: Rob Herring <robherring2@gmail.com>
Date: Thu, 4 Aug 2016 21:59:30 -0500
Message-ID: <CAL_JsqLFPdO5jfzA=eCnxMXa=oDb4ak=B3KkZ-T5_aV7cM653g@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"vegard.nossum@gmail.com" <vegard.nossum@gmail.com>,
	"rafael.j.wysocki" <rafael.j.wysocki@intel.com>,
	Valentin Rothberg <valentinrothberg@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Addressing complex dependencies
 and semantics (v2)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 4, 2016 at 5:20 AM, Mark Brown <broonie@kernel.org> wrote:
> On Thu, Aug 04, 2016 at 11:50:49AM +0200, Greg KH wrote:
>
>> Nope, it doesn't work that way, sorry.
>
>> Nice try, just unwind your initialization properly :)
>
> Deferred probe is probably the best thing that ever happened for the
> quality of kernel error handling :)

Now we just need a way to force testing of the remove functions.

Rob
