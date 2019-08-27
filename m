Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 44B91DBC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:09:25 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D542B42D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 14:09:24 +0000 (UTC)
Date: Tue, 27 Aug 2019 16:09:21 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
Message-ID: <alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 27 Aug 2019, Guenter Roeck wrote:
> On 8/27/19 6:48 AM, Greg Kroah-Hartman wrote:
> > Note, we have 4000+ developers every year, it's hard enough to get them
> > all to agree on major things, let alone crazy stuff like this :)
> > 
> 
> Is it really that crazy ?
> 
> I have to use a combination of subject analysis and patch content analysis
> using fuzzy text / string comparison, combined with an analysis of the patch
> description, to answer a simple question: Is this patch upstream, and what is
> its upstream SHA ? Having a UUID tag would make this a simple and
> straightforward operation. What is crazy is having to do all this analysis.

Again. If we agree on adding

       Link: https://lkml.kernel.org/$Message-ID

then you have your UUID tag. The tip bot sends you a reply based on that
tag and I know you got some of them already.

Thanks,

	tglx
