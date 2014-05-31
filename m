Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7E4D1990
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 22:36:08 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 6B61A20264
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 31 May 2014 22:36:07 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Theodore Ts'o <tytso@mit.edu>
Date: Sun, 01 Jun 2014 00:53:16 +0200
Message-ID: <5405523.QqPgB6FUft@vostro.rjw.lan>
In-Reply-To: <20140531022106.GE20492@thunk.org>
References: <alpine.DEB.2.10.1405282332430.3952@nanos>
	<5389363F.7090808@roeck-us.net> <20140531022106.GE20492@thunk.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] More productive uses of enthusiastic new
	kernel developers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Friday, May 30, 2014 10:21:06 PM Theodore Ts'o wrote:
> On Fri, May 30, 2014 at 06:54:07PM -0700, Guenter Roeck wrote:
> > 
> > I don't think this is a matter of being enthusiastic or not. Much more
> > one of expertise. As a user of stable kernels, I would very much prefer
> > to have it maintained by an expert (or by experts), not by a newcomer.
> > Of course, that may be just me.
> 
> The stable kernel tree would still be maintained by experts.  Even if
> newcomers supplied some of the backports, they would still get
> reviewed by experts.  Granted, for the first few patches it might not
> save me that much time compared to my just doing the backport myself,
> but it's IMHO much more likely to result in a capable programmer in
> the long run (at least compared to people who are just encouraged to
> do drive-by whitespace / spelling patch submissions). 
> 
> And if we have newcomers looking for bug fix patches that weren't
> properly marked with "cc: stable@vger.kernel.org", and calling those
> patches to the stable tree and subsystem maintainers, again, I think
> it's healthier and certainly more productive than traning them to look
> for whitespace and checkpatch.pl warnings.
> 
> If the argument is that newcomers aren't motivated to do this sort of
> grunt work, recall how much grunt work maintainers have to do.  How
> much time do you think most maintainers spend writing new sexy
> features?  As opposed to the less fun bits, such as reviewing code and
> running integration tests and bisecting through submitted patches to
> find the buggy "cleanup" patch someone sent me?  
> 
> If I can find people who don't mind sharing in some of the more less
> glory-filled aspects of being an open source developer, and who isn't
> afraid to do some of the less fun but still vitally important bits,
> speaking personally, those are the people that I would be more
> motivated to mentor.  In contrast, someone who sends thousands of
> whitespace patches is ***not*** someone I'm personally going to be
> much inclined to spend time mentoring.

I totally agree.

Rafael
