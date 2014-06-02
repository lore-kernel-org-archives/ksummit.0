Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CF47AA8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Jun 2014 18:10:46 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 5CB682032B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  2 Jun 2014 18:10:46 +0000 (UTC)
Message-ID: <1401732644.2204.39.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Date: Mon, 02 Jun 2014 11:10:44 -0700
In-Reply-To: <yq1tx838be5.fsf@sermon.lab.mkp.net>
References: <53877319.5060407@partner.samsung.com>
	<20140529181319.GA24218@kroah.com>
	<538778C5.7010505@partner.samsung.com>
	<20140529182341.GA6410@kroah.com>
	<53877FBD.7060003@partner.samsung.com>
	<20140529234311.GB12450@kroah.com> <538A5B64.10203@partner.samsung.com>
	<20140601023458.GA5243@kroah.com> <yq1tx838be5.fsf@sermon.lab.mkp.net>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [topic] Richer internal block API
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 2014-06-02 at 13:33 -0400, Martin K. Petersen wrote:
> >>>>> "Greg" == Greg KH <greg@kroah.com> writes:
> 
> >> Perhaps there is something wrong with that approach. Certainly in
> >> regards to how to bridge the gap between what we now have for logical
> >> volume support, and what we should have, or what BSD has, that
> >> approach is demonstrably a perennial failure. After all these years,
> >> we still have dm and md as separate islands, no usable snapshotting
> >> block device, and roughly zero interaction between filesystems and
> >> volume managers.
> 
> Greg> People have talked about this for over a very long time.  

Agreed; KS would never be the right venue for this, it's a LSF topic.

> Lots of talking, indeed. But I think the main problem that there's
> nothing (or very little) to see here. Move along :)
> 
> Either you let the filesystem explicitly manage RAID and snapshots (like
> btrfs) or you let DM or MD do it behind the filesystem's back. What's
> the point of introducing a new interface to do something that we already
> have?
> 
> That doesn't mean that there isn't merit to the "given this cookie, do
> you happen to have another copy?" call we have discussed in the past.
> Somebody just needs to do it. But I honestly think that btrfs is a much
> better approach to that whole thing...

We actually tried RAID unification between btrfs and dm and md a long
time ago.  We did make some progress with dm and md, but the use
paradigm of btrfs is just a bit too different and it couldn't be made to
work without making a huge mess.  What's happening now is that we're
looking at the token and descriptor APIs (mostly for copy offload) and
if we find a good one we could revisit the issue and see if there's
other things it might support.

When I was a kid, I used to love architecture (in the software sense)
because it looked like blue printing the perfect edifice in advance and
then just putting the bricks in.  Now that I'm older, I far prefer
having a set of abstractions that make an outline and being guided by
how the pieces fit together because that leaves you open to things the
perfect architecture approach forces you to ignore and it fits well with
the Linux code and use case requirements.

I'm sure when the use case finally arrives we'll be able to refactor
around it, but I don't think it's quite here yet.

James
