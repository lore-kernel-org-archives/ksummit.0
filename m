Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 231C0360
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 19:52:56 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0139.hostedemail.com
	[216.40.44.139])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 8C0291DAA2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 19:52:54 +0000 (UTC)
Message-ID: <1472413969.26978.108.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Julia Lawall <julia.lawall@lip6.fr>, Alexey Dobriyan
	<adobriyan@gmail.com>,  git <git@vger.kernel.org>
Date: Sun, 28 Aug 2016 12:52:49 -0700
In-Reply-To: <alpine.DEB.2.10.1608281152080.3321@hadrien>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<20160828075632.GA1852@p183.telecom.by>
	<alpine.DEB.2.10.1608281152080.3321@hadrien>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On Sun, 2016-08-28 at 11:59 +0200, Julia Lawall wrote:
> On Sun, 28 Aug 2016, Alexey Dobriyan wrote:
[]
> > The problem is that c-h.pl generates noise in the commit history and
> > makes git-blame less useful than it can be.
> 
> Could it be that this is a problem with git blame, rather than with
> checkpatch?  Last year there was a discussion on this list about how there
> is an option to git blame that will cause it to step through the history,
> and not show only the most recent patch that has modified a given line.

It is more or less an ease-of-use limitation of git blame.

There are some that want an ncurses only version of git blame
that could
use arrow-key style navigation for historical commit
line-ranges.

git gui blame kind of works, but it's not ncurses/text based.
git-cola kind of works too, but it's not text based either.

Are there other existing tools for blame history viewing?
