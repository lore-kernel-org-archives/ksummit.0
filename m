Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 615BA1B9B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 08:57:52 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 07422EC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 08:57:51 +0000 (UTC)
Date: Wed, 28 Aug 2019 11:57:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
Message-ID: <20190828085725.GG23584@kadam>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<CAMuHMdUxz4ufVzMjbrdA8hoNqH2XCccxNQHR+rsdM=kL9aEFbg@mail.gmail.com>
	<CACT4Y+ZyE+0Q79mxD9KMY3NCe8Oxf4Jk=yCYNkdkH2Jhr-fS_Q@mail.gmail.com>
	<20190827142826.GD26530@linux.ibm.com>
	<alpine.DEB.2.21.1908271703240.1939@nanos.tec.linutronix.de>
	<20190827152505.GE26530@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190827152505.GE26530@linux.ibm.com>
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

On Tue, Aug 27, 2019 at 08:25:05AM -0700, Paul E. McKenney wrote:
> Someone then reviews the patch and reports a bug.  I update the
> commit with a fix.  Now what I do is this:
> 
> [ paulmck: Update based on blablabla feedback from So And So. ]

It sort of bothers me that there isn't a proper tag for these so they're
are not searchable.  Last week I fixed a bug and a reviewer noticed that
there was a similar issue earlier in the function so I fixed that as
well and sent a v2 but he only gets Reviewed-by credit.  Reviewed-by is
the lamest sort of credit.

It should be that reviewers get credit for finding bugs in patches (no
credit for complaining about checkpatch issues, that is its own reward).

regards,
dan carpenter
