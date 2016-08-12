Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A050492
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 20:56:12 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E8DE186
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 12 Aug 2016 20:56:12 +0000 (UTC)
Date: Fri, 12 Aug 2016 23:56:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: NeilBrown <neilb@suse.com>
Message-ID: <20160812205605.GK4186@mwanda>
References: <87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<18158a39-1297-7368-3c0e-3e9b3ce2c3ab@suse.com>
	<alpine.DEB.2.10.1607220808110.3114@hadrien>
	<b3390bd5-eb54-428a-3030-1d7289880d47@suse.com>
	<20160811154429.GB4134@mwanda>
	<87d1lelt2s.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87d1lelt2s.fsf@notabene.neil.brown.name>
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

On Fri, Aug 12, 2016 at 10:38:35AM +1000, NeilBrown wrote:
> On Fri, Aug 12 2016, Dan Carpenter wrote:
> 
> > On Fri, Jul 22, 2016 at 03:57:40PM +0200, Hannes Reinecke wrote:
> >> > 
> >> > I guess that almost all functions return only a few possible error codes?
> >> 
> >> Precisely. If we had a way of specifying "the return value is an errno
> >> with the possible values '0', '-EIO', and '-EINVAL'" that would be
> >> _so_ cool.
> >
> > I think that's a bad idea.  We should be propagating errors from the
> > functions we call.  It should be able to change without breaking.
> 
> Should we?  I recently faced a bug caused by a (proposed) change to
> btrfs which returned a different error code to the ->fh_to_dentry()
> function. That was being propagated up to nfsd, and out on the wire in
> the NFSv4 protocol.
> Only the new error was invalid for the protocol and the client
> (correctly) reported it to user-space rather than handling it
> internally.
> 
> This happened because not enough thought/documentation had been given to
> which error codes were sensibly meaningful.  I changed
> exportfs_decode_fh() so that any error other than ENOMEM became ESTALE,
> because that is all nfsd can sensibly handle.
> 
> I'm sure there are some (many!) paths where error codes should be
> propagated transparently, but I don't think we should assume that is
> always true.
> 

My guess is that 97% of the time it should be propagated.

> >
> > Smatch does a pretty good job of tracking return values, especially
> > if you rebuild the database over and over once a day like I do.
> 
> So it is OK to keep a list of valid return values in a database, but not
> OK to keep them in the code as documentation, and to alert the
> programmer when they make a change so they can declare (and maybe even
> document) if it was an intentional change?

What I'm saying is that no one wants a thing where if we change a
return code, we have to update the documentation for all the call
trees.

regards,
dan carpenter
