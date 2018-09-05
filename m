Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 43314D84
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 09:58:53 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D1AE66D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 09:58:52 +0000 (UTC)
Message-ID: <1536141525.8121.2.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jiri Kosina <jikos@kernel.org>, Jan Kara <jack@suse.cz>
Date: Wed, 05 Sep 2018 10:58:45 +0100
In-Reply-To: <nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
References: <5c9c41b2-14f9-41cc-ae85-be9721f37c86@redhat.com>
	<20180904213340.GD16300@sasha-vm>
	<nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: Greg KH <gregkh@linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Stable trees and release
 time
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2018-09-05 at 10:32 +0200, Jiri Kosina wrote:
> On Wed, 5 Sep 2018, Jan Kara wrote:
> 
> > So I agree that with current amount of patches in stable tree, the 
> > review is cursory at best. However that does not really seem to be 
> > related to the frequency of stable releases (which is what I
> > believe  Laura complains about in this thread) but rather to the
> > amount of 
> > patches going into stable.
> 
> I think the psychological aspect shouldn't be ignored in this
> particular  case.

This really shouldn't be an issue: stable trees are backported from
upstream.  The patch (should) work in upstream, so it should work in
stable.  There are only a few real cases you need to worry about:

   1. Buggy patch in upstream backported to stable. (will be caught and
      the fix backported soon)
   2. Missing precursor causing issues in stable alone.
   3. Bug introduced when hand applying.

The chances of one of these happening is non-zero, but the criteria for
stable should mean its still better odds than the odds of hitting the
bug it was fixing.

This is the thing: backporting is an expediency process, not a perfect
process.  We are going to get bugs with backports, we just make sure
the backport is for an issue serious enough that on balance we reduce
the bugginess of the stable kernels.

> Maintainers and patch authors being constantly flooded by stable
> queues would never really get back to reviewing it, as it's always
> there, more is  already in flight, and the previous pile is still
> unreviewed.
> 
> If it comes at regular pace though, it's a bit easier to align with
> it and establish for example "friday afternoon stable review 2 hours"
> into maintainer's workflow :)
> 
> But yeah, it's weak and doesn't solve the primary thing, which is
> just the  size of stable itself.

Look, this just isn't going to happen.  As a maintainer I'm going to
see the backport, think it fixed a bug in upstream and stop there. 
That's no better review than you get by insisting that the patch be
upstream first.  Can we embrace this as the actual review in upstream
process and move on?

As I said there's a small but non-zero chance of bugs because of the
issues listed above, but I'm not going to spot them even if I performed
a full review for a kernel I forgot about months ago.

James
