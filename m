Return-Path: <dennis@kaarsemaker.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A00CA89E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 21:25:04 +0000 (UTC)
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AC805143
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 21:25:02 +0000 (UTC)
Received: by mail-wm0-f65.google.com with SMTP id o80so7137380wme.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 28 Aug 2016 14:25:02 -0700 (PDT)
Message-ID: <1472419498.4265.16.camel@kaarsemaker.net>
From: Dennis Kaarsemaker <dennis@kaarsemaker.net>
To: Joe Perches <joe@perches.com>, Julia Lawall <julia.lawall@lip6.fr>,
	Alexey Dobriyan <adobriyan@gmail.com>, git <git@vger.kernel.org>
Date: Sun, 28 Aug 2016 23:24:58 +0200
In-Reply-To: <1472413969.26978.108.camel@perches.com>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<20160828075632.GA1852@p183.telecom.by>
	<alpine.DEB.2.10.1608281152080.3321@hadrien>
	<1472413969.26978.108.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
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

On zo, 2016-08-28 at 12:52 -0700, Joe Perches wrote:
> On Sun, 2016-08-28 at 11:59 +0200, Julia Lawall wrote:
> > 
> > On Sun, 28 Aug 2016, Alexey Dobriyan wrote:
> []
> > 
> > > 
> > > The problem is that c-h.pl generates noise in the commit history
> > > and
> > > makes git-blame less useful than it can be.
> > Could it be that this is a problem with git blame, rather than with
> > checkpatch?  Last year there was a discussion on this list about
> > how there
> > is an option to git blame that will cause it to step through the
> > history,
> > and not show only the most recent patch that has modified a given
> > line.
> It is more or less an ease-of-use limitation of git blame.
> 
> There are some that want an ncurses only version of git blame
> that could
> use arrow-key style navigation for historical commit
> line-ranges.
> 
> git gui blame kind of works, but it's not ncurses/text based.
> git-cola kind of works too, but it's not text based either.
> 
> Are there other existing tools for blame history viewing?

tig has a neat way of doing blame history digging: do a `tig blame
filename`, select a line and hit the comma key to re-blame from the
parent of the commit that was blamed for that line.

(hat tip to Jeff King who pointed out this trick recently)

D.
