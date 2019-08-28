Return-Path: <gregkh@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BC1DF2BA6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 11:41:28 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 75AA01FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 11:41:28 +0000 (UTC)
Date: Wed, 28 Aug 2019 13:41:25 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190828114125.GA31462@kroah.com>
References: <CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com>
	<20190828104219.GC4298@sirena.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190828104219.GC4298@sirena.co.uk>
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Wed, Aug 28, 2019 at 11:42:19AM +0100, Mark Brown wrote:
> On Wed, Aug 28, 2019 at 11:08:37AM +0200, Greg Kroah-Hartman wrote:
> 
> > How about this, when sending a v2, you have it be in response to the v1
> > patch?  Same for v3, have it be in response for the v2 one.  And so on.
> 
> That seems like it might confuse mail readers and have them do
> interesting things with threading so they don't group the entire new
> version of the series together but instead split it through the earlier
> versions.

Works fine with mutt :)
