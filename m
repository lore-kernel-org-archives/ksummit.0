Return-Path: <joe@perches.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D5D686C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 21:57:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0028.hostedemail.com
	[216.40.44.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 89564161
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 21:57:48 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id A4813183F39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 21:57:47 +0000 (UTC)
Message-ID: <1472421462.26978.134.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Dennis Kaarsemaker <dennis@kaarsemaker.net>, Julia Lawall
	<julia.lawall@lip6.fr>, Alexey Dobriyan <adobriyan@gmail.com>, git
	<git@vger.kernel.org>
Date: Sun, 28 Aug 2016 14:57:42 -0700
In-Reply-To: <1472419498.4265.16.camel@kaarsemaker.net>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<20160828075632.GA1852@p183.telecom.by>
	<alpine.DEB.2.10.1608281152080.3321@hadrien>
	<1472413969.26978.108.camel@perches.com>
	<1472419498.4265.16.camel@kaarsemaker.net>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Greg KH <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>,
	Sasha Levin <levinsasha928@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, 2016-08-28 at 23:24 +0200, Dennis Kaarsemaker wrote:

> > There are some that want an ncurses only version of git blame
> > that could use arrow-key style navigation for historical commit
> > line-ranges.
> > 
> > git gui blame kind of works, but it's not ncurses/text based.
> > git-cola kind of works too, but it's not text based either.
> > 
> > Are there other existing tools for blame history viewing?
> tig has a neat way of doing blame history digging: do a `tig blame
> filename`, select a line and hit the comma key to re-blame from the
> parent of the commit that was blamed for that line.

Thanks, of course I neglected to mention tig.

What I think some here want is the ability to view
back and forth from old to new rather than just split
the window horizontally with the commit content.

Basically, apply the patch hunks for a specific range
to see color coded changes rather just show the entire
patch in a separate view.

Sure, seeing the commit log and patch is useful.

Seeing the block of code pre and post patch for the
specific section can be more useful.
