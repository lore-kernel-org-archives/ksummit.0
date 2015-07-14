Return-Path: <dvhart@infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6397E8B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 23:58:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.9])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C9AB211F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 23:58:47 +0000 (UTC)
Date: Tue, 14 Jul 2015 16:58:45 -0700
From: Darren Hart <dvhart@infradead.org>
To: Peter =?iso-8859-1?Q?H=FCwe?= <PeterHuewe@gmx.de>
Message-ID: <20150714235845.GA119458@vmdeb7>
References: <559C73DF.2030008@roeck-us.net> <20150711023946.GV111846@vmdeb7>
	<20150711150437.GA6666@kroah.com>
	<201507122327.09304.PeterHuewe@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <201507122327.09304.PeterHuewe@gmx.de>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Jul 12, 2015 at 11:27:08PM +0200, Peter Hüwe wrote:
> Am Samstag, 11. Juli 2015, 17:04:37 schrieb Greg KH:
> > On Fri, Jul 10, 2015 at 07:39:46PM -0700, Darren Hart wrote:
> > > OK, all good points. It looks as though I can step up my own tooling some
> > > to make the email-to-compilation step faster so I don't spend as much
> > > time on patches with compiler warnings, that don't apply, etc. Dan C.
> > > said something similar.
> > 
> > I think I mentioned it before, but Wolfram has a set of scripts that
> > does this really well.  I don't know if they are published anywhere, but
> > that would be a good place to start with.  I think Sara Sharp also had a
> > bunch that she used to make life easier, you might want to ask her the
> > next time you see her in the office.
> 
> 
> They are called ninja-check and published here
> https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2014-May/000554.html
> 
> Ksummit Thread about all these tools can be found here:
> ftp://kernel.mirrors.pair.com/pub/linux/kernel/people/paulmck/LKS/LKS2014Topic/000291.html

Thank you all very much for these pointers. I have ninja-check up and running
all the checkers now. Between these and:

http://www.do-not-panic.com/2014/07/applying-patches-from-mutt-onto-git.html
(view source for actual .muttrc as his blog hides <pipe-entry> and <tag-prefix>)

And Ben's original:
http://flavioleitner.blogspot.com/2011/03/patch-workflow-with-mutt-and-git.html

I added a checkpatch binding as well.

I now have a much more capable mutt-to-git interface which should help a ton. It
took me a day while dodging everything else I could, and I'll continue to tweak
it forever of course. Well worth the effort.

-- 
Darren Hart
Intel Open Source Technology Center
