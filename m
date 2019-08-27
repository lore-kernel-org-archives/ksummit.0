Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D5823170B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 15:06:17 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 572C442D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 15:06:17 +0000 (UTC)
Date: Tue, 27 Aug 2019 17:06:13 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: "Paul E. McKenney" <paulmck@kernel.org>
In-Reply-To: <20190827142826.GD26530@linux.ibm.com>
Message-ID: <alpine.DEB.2.21.1908271703240.1939@nanos.tec.linutronix.de>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<CAMuHMdUxz4ufVzMjbrdA8hoNqH2XCccxNQHR+rsdM=kL9aEFbg@mail.gmail.com>
	<CACT4Y+ZyE+0Q79mxD9KMY3NCe8Oxf4Jk=yCYNkdkH2Jhr-fS_Q@mail.gmail.com>
	<20190827142826.GD26530@linux.ibm.com>
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

On Tue, 27 Aug 2019, Paul E. McKenney wrote:
> On Tue, Aug 27, 2019 at 06:30:11AM -0700, Dmitry Vyukov via Ksummit-discuss wrote:
> > If I am reading git help correctly, this won't handle changes with
> > more than 1 version. Also maintainers will be prohibited from doing
> > any changed to patches during commit.
> 
> Or we are required to add more Link: tags or other annotations describing
> what we changed and why.

The point is that the Link: tag connects the commit to the email by
which it was submitted.

If the committer fixes something up when committing, then this still stays
the same connection.

So you have SHA1 + Message-ID. If the SHA1 changes and Message-ID stays
then same, then either the patch was amended or rebased. But you can figure
that out with diff.

Thanks,

	tglx
