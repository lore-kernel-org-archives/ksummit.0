Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 12BA998F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:30:06 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8C8D11FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 19:30:04 +0000 (UTC)
Date: Fri, 9 May 2014 12:29:57 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20140509192956.GB13050@jtriplet-mobl1>
References: <20140509170709.GA9747@redhat.com> <20140509171954.GC8289@cloud>
	<1399656674.4136.12.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399656674.4136.12.camel@jlt4.sipsolutions.net>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 09, 2014 at 07:31:14PM +0200, Johannes Berg wrote:
> On Fri, 2014-05-09 at 10:19 -0700, josh@joshtriplett.org wrote:
> 
> > I'd like to see this topic as well.  I think we could do a lot better
> > here than we do.  And don't forget that GCC is one of our top static
> > analysis tools, if only because it's the only one *everyone* runs; that
> > includes both warnings and the possibility of shipping and building our
> > own GCC plugin.
> > 
> > I'd also like to nominate Christopher Li, for Sparse.
> 
> Seconded, I'm also interested in general in whether people still think
> sparse is useful and we should give it attention, or should focus more
> on really getting everything into gcc - we have a number of sparse
> warnings in very low-level header files that get used everywhere, for
> example the one I just fixed in [1] or the one I tried to fix but that
> ended up being buggy ([2]), but there doesn't seem to be much attention
> to these during the patch submission etc.

I definitely still find Sparse useful and regularly check my own kernel
code with it.  Fengguang Wu's automated build-and-test bot also uses
Sparse.

I *would* like to see more of Sparse's functionality make it into GCC,
so that it gets used as part of default builds.  HPA and I have been
working to document some of the major bits so that GCC can implement
them [1], and Tom Tromey is working on GCC implementations [2].

[1]
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=59850
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=59851
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=59852
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=59855
http://gcc.gnu.org/bugzilla/show_bug.cgi?id=59856

[2] https://github.com/tromey/gcc/tree/add-sparse-attributes

- Josh Triplett
