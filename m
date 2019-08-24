Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 89F7E2F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 23:13:29 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2397067F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 24 Aug 2019 23:13:29 +0000 (UTC)
Date: Sat, 24 Aug 2019 19:13:05 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20190824231305.GC5163@mit.edu>
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
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908232150580.1939@nanos.tec.linutronix.de>
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

On Fri, Aug 23, 2019 at 11:15:55PM +0200, Thomas Gleixner wrote:
> For incoming stuff, I just mark a full mailthread or several of them in the
> mail client, store it as mbox and then I have a script which creates a
> quilt series out of it. That script does a bunch of things:
> 
>     - Collect Reviewed-by, Acked-by, Tested-by tags either from individual
>       replies or replies to the cover letter. The latter apply to the whole
>       series.
> 
>     - Adds my Signed-off-by
> 
>     - Extract message-id for each patch and add the
>       Link: https://lkml.kernel.org/r/$MSGID
> 
>     - A few magic things which I need for my emacs integration

I use quilt for processing incoming changes for ext4 as well; would
you mind sharing your script?  This sounds like it would be really
useful for me.

Thanks!!

						- Ted
