Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C18E305
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 17:47:17 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4826F123
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 17:47:16 +0000 (UTC)
Date: Wed, 24 Aug 2016 13:47:24 -0400
From: Greg KH <greg@kroah.com>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20160824174724.GE30853@kroah.com>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472052583.61594.577.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1472052583.61594.577.camel@infradead.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Aug 24, 2016 at 04:29:43PM +0100, David Woodhouse wrote:
> On Wed, 2016-08-24 at 09:08 -0400, Greg KH wrote:
> > 
> > > At the very least, I think kernel developers each need to decide how
> > > they feel about GPL enforcement as silence and inaction is as much of
> > > a choice as voicing a view.
> > 
> > That's not fair, it's implying that our current way of doing this type
> > of thing is somehow not working.  
> 
> There are many who believe that it *isn't* working. Companies violate
> the GPL all the time, and are encouraged by the fact that there is no
> consistent enforcement when they do so.

That's not fair, companies have always "violated" our license, and
violate lots of other licenses, that doesn't make them any less real or
valid.

Personally, it seems that we are much better off today than we were 15,
10, and even 5 years ago on this front.  There's a standing offer from
the Linux foundation to get any code from any company that someone
things is not open that is in the kernel.  That offer has been taken up
on a few times, and has never failed so far.

And that's the best that we can do without getting lawyers involved.
Once we do that, to quote Linus, "we lost".

> And it's worse than "silence and inaction". There are even some who
> actually argue *against* and try to derail any efforts to improve and
> enforce compliance. It's almost as if they'd rather the kernel was
> under a BSD licence, so that such usage was permitted.

Sure, lots of companies would like that because they are stupid and
selfish.  The best thing we have to combat that is what we have been
doing for the past 20+ years.  It has made huge changes to huge
companies (just look at Intel, and now Microsoft!)  Once you get legal
involved, all bets are off as this now stops being something that we can
help address, and instead have to rely on lawyers and courts, a fickle
beast as the vmware thing is proving :(

And we aren't "silent" at all, but it's all about providing a big enough
carrot for companies to join us, and not go after them with a stick to
drive them away.

As someone else once said, "never sue your customer".

> > Remember, we have done something that no other group has ever done
> > before, so please don't discount that we know how to handle stuff
> > like this.  Sometimes not making a public statement is actually the
> > correct thing to do.
> 
> Well, that of course depends on what you want to achieve.

I want the code, and I want the company that produced that code to join
our community.  So far we are doing really well in achieving that goal.
You might have other goals, which is fine.

> If you are happy with the status quo, and do not want violators to be
> brought into compliance, then of course it's the correct thing to do.

I do, but I don't ever think that suing them is the right way to do it,
given that we have been _very_ successful so far without having to do
that.

> I don't think everybody *is* happy with the status quo, though.

That's fine, and understandable, someone is always never happy :)

So, specifics, what are you upset about that we can do specifically
better?  What company is shipping code that we don't have that we want?

I have a shortlist that I'm working on, what's yours?

thanks,

greg k-h
