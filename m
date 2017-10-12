Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BB1B9486
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Oct 2017 10:03:32 +0000 (UTC)
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 320C049E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Oct 2017 10:03:32 +0000 (UTC)
Received: by mail-it0-f68.google.com with SMTP id k70so12825898itk.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Oct 2017 03:03:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <871sm9plfb.fsf@intel.com>
References: <20171005192002.hxbjjdjhrfa4oa37@thunk.org>
	<1507303665.3104.13.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1710091750540.14384@jbgna.fhfr.qr>
	<1507567045.3100.16.camel@HansenPartnership.com>
	<alpine.DEB.2.20.1710091848390.3870@hadrien>
	<1507568189.3100.29.camel@HansenPartnership.com>
	<871sm9plfb.fsf@intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 12 Oct 2017 12:03:30 +0200
Message-ID: <CAKMK7uHTVtfOxWkJBgvg_eK_OTN4o1eJNhdQt11MWmRBL4_43w@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Maintainer's Summit Agenda Planning
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Oct 11, 2017 at 8:51 PM, Jani Nikula <jani.nikula@intel.com> wrote:
> On Mon, 09 Oct 2017, James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>> On Mon, 2017-10-09 at 18:49 +0200, Julia Lawall wrote:
>>> Do you suggest one big patch, that goes to who?  Or lots of little
>>> patches that go out at once to the individual maintainers of the
>>> affected code?
>>
>> I was actually thinking we validate the script and if there are no
>> problems, apply it at -rc1 ... so effectively one big patch.
>
> By -rc1 we (drm in general, drm/i915 in particular) will already have
> accumulated easily 4-5 weeks' worth of commits for the *next* merge
> window. Applying treewide stuff to Linus' tree at -rc1 forces a
> backmerge and potentially conflicts galore I'm not particularly thrilled
> about. I'd much rather see the patches to our driver come through our
> tree, and we generally deal with them without a fuss.

And it's not just the development that's already queued, there's tons
of patch series in developer trees that need to be rebased too. Doing
treewide stuff at -rc1 is as disruptive as any other time for
developers overall, it only optimizes the disruption in Linus repo.

The other reason I'm not too fond of doing treewide stuff as one huge
patch is that those cocci patches are perfect newbie fodder for their
first patch. Of course once a refactor has tappererd of it's good to
do one final push, but not always and consistently.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
