Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 05321E8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 09:21:52 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7D00B180
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Sep 2018 09:21:51 +0000 (UTC)
Date: Mon, 24 Sep 2018 12:21:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jiri Kosina <jikos@kernel.org>
Message-ID: <20180924092136.fqlane5t2p3jx3ee@mwanda>
References: <alpine.LRH.2.21.1809220709090.19240@namei.org>
	<20180922131640.pxjwukrckggxtg3s@mwanda>
	<nycvar.YFH.7.76.1809231518440.15880@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1809231518440.15880@cbobk.fhfr.pm>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Security
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Sep 23, 2018 at 03:20:22PM +0200, Jiri Kosina wrote:
> On Sat, 22 Sep 2018, Dan Carpenter wrote:
> 
> > Sort of related to this.  I think we should have a public email list to
> > discuss potential security problems.  We've actually talked about making
> > the security@kernel.org list public at some point when people started
> > flooding it with static checker warnings about potential SELinux missing
> > checks.
> > 
> > The downsides are 1) Maintainers will be annoyed.  They don't want me or
> > anyone to forward them static checker output (they are polite about
> > this).  But they also want to be the first to know about real bugs found
> > by static analysis.  These are conflicting and impossible desires...  2)
> > Script kiddies will follow the list and learn about bugs earlier.  I
> > don't see this as a huge issue if we restricted it to driver specific
> > bugs.
> 
> 3) there simply is a need for CRD process for the kernel (which pretty 
>    much by definition is not happening publicly). Currently, security@ 
>    serves that purpose, so if you make that public, you have to 
>    instantiate some other process to deal with CRDs.

I'm not saying we would eliminate security@kernel.org.  We would keep
that.  security@kernel.org also does not want to answer questions about
every "suspicious code" that people find.

For coordinated responses you need linux-distros. security@kernel.org
does not do it.

security@kernel.org is there for two reasons.  First we need a contact
to deal with security issues.  About half the time when people send us
security reports to security@kernel.org then we just forward it to the
appropriate maintainer.  Second, it's has a bunch of core developers for
serious bugs in ptrace or similar which affect everyone.  Those kinds of
fixes are risky and complicated.  But after a fix is found then distros
are expected to handle the release and getting the CVE etc.

regards,
dan carpenter
