Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 293683850
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 20:47:00 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.62])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9DDB413A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 20:46:58 +0000 (UTC)
Message-ID: <ff8702f347eeabe77b42a6c645cf87d51221f133.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Doug Anderson <dianders@chromium.org>, "Theodore Y. Ts'o"
	<tytso@mit.edu>,  Thomas Gleixner <tglx@linutronix.de>
Date: Wed, 28 Aug 2019 22:46:51 +0200
In-Reply-To: <CAD=FV=VLMFxFt55oB4ERTFw3xnH4czUY5tXiqfY14NKZ8gqojA@mail.gmail.com>
References: <CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
	<CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
	<20190827195351.GA30710@kroah.com>
	<CAJWu+oq8jFnJ4iJ+R3swr-93eMwDgbWXe1W2Aiu-r+tuYSY5Ag@mail.gmail.com>
	<20190828090837.GA31704@kroah.com>
	<CAJWu+oocs3T8orMNt6AmdVgWONzZg0vD=E8EdvzE9rOi_XatUw@mail.gmail.com>
	<20190828135820.GA24857@mit.edu>
	<CAD=FV=VLMFxFt55oB4ERTFw3xnH4czUY5tXiqfY14NKZ8gqojA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
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

Hi Doug,


> The actual Message-Id generated there was:
> 
> 20190828132723.0.RFC.Ie6289f437ae533d7fcaddfcee9202f0e92c6b2b9@changeid

When you post a patch with that type of message ID, why don't you
already include a suitable archive Link: inside the patch posting?

Then you don't have to rely on the maintainer to add the Link: tag when
they apply the patch. Many (kernel) maintainers do now, and pre-adding
the Link: tag means we maintainers should change our scripts to not
duplicate the Link: tag, but if you have a predictable Message-Id and
predictable archive then you ought to be able to already include link?

johannes
