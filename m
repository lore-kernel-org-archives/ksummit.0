Return-Path: <sameo@linux.intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F080B884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 09:10:16 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6569689
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Aug 2015 09:10:16 +0000 (UTC)
Date: Wed, 5 Aug 2015 11:09:26 +0200
From: Samuel Ortiz <sameo@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20150805090926.GA27438@zurbaran.home>
References: <20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<20150728230743.GO4753@usrtlx11787.corpusers.net>
	<CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
	<CACRpkda0u4tWKfXTa0OEV7nFuXWjpDBt222iTBbEhnqLZptJXw@mail.gmail.com>
	<CAL_JsqLBPdiCgcE0CDesZXWQtthPJbZ8ryvcPmr6CaxWjMPFyA@mail.gmail.com>
	<F3A6AFDE-1DFA-4DC7-AD26-DC02260C0979@holtmann.org>
	<CACRpkda=Pr3+2kGfH0Kc4eNw5yMOFHbbeyEJbeLApa-YzCsxsw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkda=Pr3+2kGfH0Kc4eNw5yMOFHbbeyEJbeLApa-YzCsxsw@mail.gmail.com>
Cc: Bjorn Andersson <bjorn.andersson@sonymobile.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 05, 2015 at 10:40:11AM +0200, Linus Walleij wrote:
> On Tue, Aug 4, 2015 at 12:36 AM, Marcel Holtmann <marcel@holtmann.org> wrote:
> > Hi Rob,
> 
> >> There's been some work by Neil Brown to create a UART slave
> >> bus[1] (...)
> 
> > The work on UART slaves (or whatever it will be called eventually) is important
> > for Bluetooth and most likely GPS and NFC in the future. It then allows to define
> > all the nasty behind the curtain details of that UART via DT or ACPI in vendor drivers.
> 
> I agree 100%, and I think I have a simple enough in-kernel usecase so I can
> get testing these series.
> 
> It seems GPS and NFC and other code is being kept out of the kernel
> because of the absense of a UART slave bus and all the hazzle of handling
> this.
Keeping it in userspace means vendors can provide their stacks under
the apache license, not the kernel GPL one.

Cheers,
Samuel.
