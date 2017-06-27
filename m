Return-Path: <serge@mail.hallyn.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D2472B01
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 23:10:07 +0000 (UTC)
Received: from h2.hallyn.com (h2.hallyn.com [78.46.35.8])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4939CEB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 23:10:07 +0000 (UTC)
Date: Tue, 27 Jun 2017 18:10:11 -0500
From: "Serge E. Hallyn" <serge@hallyn.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170627231011.GA10543@mail.hallyn.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
	<CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
	<CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+55aFxDyj-9koeDemqUvxYrLyKxV8Xggy=ad_EQmGrfEef_gg@mail.gmail.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Quoting Linus Torvalds (torvalds@linux-foundation.org):
> For example, how about a script that takes a list of PCI devices, and

Or uses lspci and lsusb output?

> figures out the modules for that, and generates a list of Kconfig
> symbols you want?
