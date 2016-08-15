Return-Path: <mst@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D64F93EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 23:26:19 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3A63517D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Aug 2016 23:26:19 +0000 (UTC)
Date: Tue, 16 Aug 2016 02:26:16 +0300
From: "Michael S. Tsirkin" <mst@redhat.com>
To: NeilBrown <nfbrown@novell.com>
Message-ID: <20160816022254-mutt-send-email-mst@kernel.org>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<20160812044211.xysb3larocxob342@redhat.com>
	<871t1ulfvz.fsf@notabene.neil.brown.name>
	<20160812082417-mutt-send-email-mst@kernel.org>
	<87y442jytb.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87y442jytb.fsf@notabene.neil.brown.name>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
 kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 12, 2016 at 04:17:36PM +1000, NeilBrown wrote:
> On Fri, Aug 12 2016, Michael S. Tsirkin wrote:
> 
> > On Fri, Aug 12, 2016 at 03:23:28PM +1000, NeilBrown wrote:
> >> On Fri, Aug 12 2016, Michael S. Tsirkin wrote:
> >> 
> >> > On Tue, Jul 19, 2016 at 10:32:51AM -0500, Eric W. Biederman wrote:
> >> >> I would really like to get a feel among kernel maintainers and
> >> >> developers if this is something that is interesting, and what kind of
> >> >> constraints they think something like this would need to be usable for
> >> >> the kernel?
> >> >> 
> >> >> Eric
> >> >
> >> > Surprised that no one mentioned this yet - I think tagging
> >> > integers/structs as coming from userspace could be useful,
> >> > if we can teach e.g. smatch that access to a kernel
> >> > pointer through this offset might fault.
> >> 
> >> We already have that.
> >> Sparse recognizes
> >>     __attribute__((noderef, address_space(1)))
> >>  to mean "this is a pointer to a different address space which
> >>  cannot be dereferened" and linux has
> >> 
> >> # define __user                __attribute__((noderef, address_space(1)))
> >> 
> >> so if you mark a pointer as "__user", then sparse will complain
> >> if you dereference it.
> >> 
> >> We've had this for over a decade :-)
> >> 
> >>   https://lwn.net/Articles/87538/
> >> 
> >> NeilBrown
> >
> >
> > Of course, everyone uses these.  But what I mean is tagging index types:
> >
> > 	int data[256];
> >
> > 	int foo(u32 __user *ptr)
> > 	{
> > 		u32 i;
> > 		if (get_user(i, ptr))
> > 			return -EFAULT;
> >
> > 		data[i] = 0;
> > 			^^^ security vulnerability
> >
> > 	}
> >
> > Above, i is coming from userspace and so must always be range-checked
> > before it's used as an index.
> 
> Ahhh, I see.  Thanks spelling it out for me.
> 
> 
> >
> > Maybe we could change get_user return a tagged result: __from_user int.
> > And have above warn because __from_user can not be assigned to plain
> > int.
> >
> > Then rework the code along the following lines:
> >
> >
> > 	int data[256];
> >
> > 	int force_range(__unsafe u32 value, unsigned idx)
> > 	{
> > 		return ((__force int)value) % idx;
> > 	}
> >
> > 	int foo(u32 __user *ptr)
> > 	{
> > 		__unsafe u32 i;
> > 		int ichecked;
> > 		if (get_user(i, ptr))
> > 			return -EFAULT;
> >
> > 		ichecked = force_range(i, sizeof data);
> > 		data[ichecked] = 0;
> > 			^^^ ok now
> >
> > 	}
> 
> You could probably do this today using __attribute__((bitwise))
> 
> typedef int __attribute__((bitwise)) unsafe32;
> 
> Then use "unsafe32" wherever you have "__unsafe u32".
> 
> When you try
> 
>   data[i] = 0;
> 
> sparse says "warning: restricted int degrades to integer"

Yes, but inability to do math on bitwise integers is rather
annoying.

E.g. if index is in bytes:

	int j = i / sizeof(*data);

will warn even though nothing bad is going on.


Maybe we could benefit from a separate
integer type, such that unsafe integers can interact
with safe (regular) integers, resulting in unsafe
integers.

> 
> Of course, changing all the code would be a pain.
> I guess you introduce "get_safe_user" then gradually transition code
> over.
> 
> NeilBrown
