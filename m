Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 10F9524DE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 08:50:45 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9512BEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 08:50:44 +0000 (UTC)
Date: Wed, 28 Aug 2019 10:50:40 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
In-Reply-To: <alpine.DEB.2.21.1908262146050.1939@nanos.tec.linutronix.de>
Message-ID: <alpine.DEB.2.21.1908281048520.1939@nanos.tec.linutronix.de>
References: <CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
	<20190823151843.GH8130@mit.edu>
	<CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<20190823193832.GE4791@pendragon.ideasonboard.com>
	<alpine.DEB.2.21.1908232150580.1939@nanos.tec.linutronix.de>
	<20190824231305.GC5163@mit.edu>
	<alpine.DEB.2.21.1908250908360.1939@nanos.tec.linutronix.de>
	<alpine.DEB.2.21.1908262146050.1939@nanos.tec.linutronix.de>
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

On Tue, 27 Aug 2019, Thomas Gleixner wrote:
> As I did not get a repo set up on git.kernel.org for this yet, find
> attached a git bundle which allows you to clone my repo for now. That works
> like a regular clone

I assumed that this should go under pub/scm/utils which requires
permission, but Konstantin told me just to stick it into ..../tglx/. So here it is:

 git://git.kernel.org/pub/scm/linux/kernel/git/tglx/quilttools

Thanks,

	tglx
