Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7A5A114F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:19:05 +0000 (UTC)
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
	(mail-eopbgr680102.outbound.protection.outlook.com [40.107.68.102])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2EE377EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:19:04 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 5 Sep 2018 16:19:00 +0000
Message-ID: <20180905161859.GS16300@sasha-vm>
References: <nycvar.YFH.7.76.1809050838570.15880@cbobk.fhfr.pm>
	<20180905081658.GB24902@quack2.suse.cz>
	<nycvar.YFH.7.76.1809051029400.15880@cbobk.fhfr.pm>
	<1536141525.8121.2.camel@HansenPartnership.com>
	<20180905104700.GE9781@sirena.org.uk>
	<6a25761a-c640-4eb2-952c-4bcd91da28a2@email.android.com>
	<s5hefe8cd0u.wl-tiwai@suse.de>
	<CAKMK7uFMHkw4jw3D6ijGNZF84+p+EGY_6YAdCOTcXe0DQbLC6g@mail.gmail.com>
	<20180905140535.GB7556@kroah.com>
	<CAKMK7uFMCL95mrvFQvxzjZhEk+QvkaYmZDRvp7PY6FgJTQnWzw@mail.gmail.com>
In-Reply-To: <CAKMK7uFMCL95mrvFQvxzjZhEk+QvkaYmZDRvp7PY6FgJTQnWzw@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <97A605EBF6D25D4BBC54D4B281518E40@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Greg KH <gregkh@linuxfoundation.org>,
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

On Wed, Sep 05, 2018 at 05:54:47PM +0200, Daniel Vetter wrote:
>On Wed, Sep 5, 2018 at 4:05 PM, Greg KH <gregkh@linuxfoundation.org> wrote=
:
>> On Wed, Sep 05, 2018 at 03:27:58PM +0200, Daniel Vetter wrote:
>>> On Wed, Sep 5, 2018 at 3:03 PM, Takashi Iwai <tiwai@suse.de> wrote:
>>> > On Wed, 05 Sep 2018 14:24:18 +0200,
>>> > James Bottomley wrote:
>>> >>
>>> >> On September 5, 2018 11:47:00 AM GMT+01:00, Mark Brown <broonie@kern=
el.org> wrote:
>>> >> >On Wed, Sep 05, 2018 at 10:58:45AM +0100, James Bottomley wrote:
>>> >> >
>>> >> >> This really shouldn't be an issue: stable trees are backported fr=
om
>>> >> >> upstream.  The patch (should) work in upstream, so it should work=
 in
>>> >> >> stable.  There are only a few real cases you need to worry about:
>>> >> >
>>> >> >>    1. Buggy patch in upstream backported to stable. (will be caug=
ht
>>> >> >and
>>> >> >>       the fix backported soon)
>>> >> >>    2. Missing precursor causing issues in stable alone.
>>> >> >>    3. Bug introduced when hand applying.
>>> >> >
>>> >> >> The chances of one of these happening is non-zero, but the criter=
ia
>>> >> >for
>>> >> >> stable should mean its still better odds than the odds of hitting=
 the
>>> >> >> bug it was fixing.
>>> >> >
>>> >> >Some of those are substantial enough to be worth worrying about,
>>> >> >especially the missing precursor issues.  It's rarely an issue with=
 the
>>> >> >human generated backports but the automated ones don't have a sense=
 of
>>> >> >context in the selection.
>>> >> >
>>> >> >There's also a risk/reward tradeoff to consider with more minor iss=
ues,
>>> >> >especially performance related ones.  We want people to be enthusia=
stic
>>> >> >about taking stable updates and every time they find a problem with=
 a
>>> >> >backport that works against them doing that.
>>> >>
>>> >> I absolutely agree.  That's why I said our process is expediency
>>> >> based:  you have to trade off the value of applying the patch vs the
>>> >> probability of introducing bugs.  However the maintainers are mostly
>>> >> considering this which is why stable is largely free from trivial
>>> >> but pointless patches.  The rule should be: if it doesn't fix a user
>>> >> visible bug, it doesn't go into stable.
>>> >
>>> > Right, and here the current AUTOSEL (and some other not-stable-marked=
)
>>> > patches coming to a gray zone.  The picked-up patches are often right
>>> > as "some" fixes, but they are not necessarily qualified as "stable
>>> > fixes".
>>> >
>>> > How about allowing to change the choice of AUTOSEL to be opt-in and
>>> > opt-out, depending on the tree?  In my case, usually the patches
>>> > caught by AUTOSEL aren't really the patches with forgotten stable
>>> > marker, but rather left intentionally by various reasons.  Most of
>>> > them are fine to apply in anyway, but it was uncertain whether they
>>> > are really needed / qualifying as stable fixes.  So, I'd be happy to
>>> > see them as opt-in, i.e. applied only via manual approval.
>>> >
>>> > Meanwhile, some trees have no stable-maintenance, and AUTOSEL would
>>> > help for them.  They can be opt-out, i.e. kept until someone rejects.
>>>
>>> +1 on AUTOSEL opt-in. It's annyoing at best, when it backports cleanup
>>> patches (because somehow those look like stealthy security fixes
>>> sometimes) and breaks a bunch of people's boxes for no good reason.
>>>
>>> In general it'd be really good if -stable had a clearer audit path.
>>> Every patch have a recorded reason why it's being applied (e.g. Cc:
>>> stable in upstream, Link to the lkml thread/bug report, AUTOSEL mail,
>>> whatever), so that after the fact I can figure out why a -stable patch
>>> happend, that would be really great. Atm -stable occasionally blows
>>> up, with a patch we didn't mark as cc: stable, and we have no idea
>>> whyiit showed up in -stable even. That makes it really hard to do
>>> better next time around.
>>
>> I try to keep the audit thread here, as I get asked all the time why
>> stuff got added.
>>
>> Here's what I do, it's not exactly obvious, sorry:
>>         - if it came from a stable@ tag, just leave it alone and add my
>>           signed-off-by
>>         - if it was manually requested by someone, I add a "cc:
>>           requestor" to the signed-off-by area and add my s-o-b
>
>Cc-stable-requested-by: would be more obvious. If you have, lkml
>archive link with the bug report is even better.
>
>An additional quirk in drm is that we have committers, so normal Cc:
>rules (author + committer + anyone already on Cc:) has a good chance
>of leaving out maintainers. And generally committers don't care one
>bit about some multi-year old LTS kernel, not their job ... You'll
>never get any review from them.
>
>>         - if it came from Sasha's tree, Sasha's s-o-b is on it
>
>How do things end up in Sasha's tree? Is that just AUTOSEL, or also
>other patches?

Just autosel. Other patches take the regular way into Stable.

>>         - if it came from David Miller's patchset, his s-o-b is on it.
>
>Ok, that's netdev and Dave knows what's he doing :-)
>
>> That should cover all types of patches currently going into the trees,
>> right?
>>
>> So always, you can cc: everyone on the s-o-b area and get the people
>> involved in the patch and someone involved in reviewing it for stable
>> inclusion.
>
>Let's pick a concrete example:
>
>commit c81350c31d0d20661a0aa839b79182bcb0e7a45d
>Author: Satendra Singh Thakur <satendra.t@samsung.com>
>Date:   Thu May 3 11:19:32 2018 +0530
>
>    drm/atomic: Handling the case when setting old crtc for plane
>
>    [ Upstream commit fc2a69f3903dfd97cd47f593e642b47918c949df ]
>
>    In the func drm_atomic_set_crtc_for_plane, with the current code,
>    if crtc of the plane_state and crtc passed as argument to the func
>    are same, entire func will executed in vein.
>    It will get state of crtc and clear and set the bits in plane_mask.
>    All these steps are not required for same old crtc.
>    Ideally, we should do nothing in this case, this patch handles the sam=
e,
>    and causes the program to return without doing anything in such scenar=
io.
>
>    Signed-off-by: Satendra Singh Thakur <satendra.t@samsung.com>
>    Cc: Madhur Verma <madhur.verma@samsung.com>
>    Cc: Hemanshu Srivastava <hemanshu.s@samsung.com>
>    Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>    Link: https://patchwork.freedesktop.org/patch/msgid/1525326572-25854-1=
-git-send-email-satendra.t@samsung.com
>    Signed-off-by: Sasha Levin <alexander.levin@microsoft.com>
>    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
>Upstream patch doesn't have a cc: stable. I tried looking for it in my
>mail archives (and it's a patch committed by myself, so I guess I'll
>get cc'ed?), didn't find anything.

I'm really not sure why you don't see the mail. Can you maybe see if it
got filtered as spam?

>I have no idea why this got added at all. Looking at the discussion on
>dri-devel, it's purely a cleanup for consistency with another
>function. And it blew up :-/

On the flip side, what about:

commit 3fd34ac02ae8cc20d78e3aed2cf6e67f0ae109ea
Author: Hang Yuan <hang.yuan@linux.intel.com>
Date:   Mon Jul 23 20:15:46 2018 +0800

    drm/i915/gvt: fix cleanup sequence in intel_gvt_clean_device

    Create one vGPU and then unbind IGD device from i915 driver. The follow=
ing
    oops will happen. This patch will free vgpu resource first and then gvt
    resource to remove these oops.

    BUG: unable to handle kernel NULL pointer dereference at       00000000=
000000a8
      PGD 80000003c9d2c067 P4D 80000003c9d2c067 PUD 3c817c067 P      MD 0
      Oops: 0002 [#1] SMP PTI
      RIP: 0010:down_write+0x1b/0x40
    Call Trace:
      debugfs_remove_recursive+0x46/0x1a0
      intel_gvt_debugfs_remove_vgpu+0x15/0x30 [i915]
      intel_gvt_destroy_vgpu+0x2d/0xf0 [i915]
      intel_vgpu_remove+0x2c/0x30 [kvmgt]
      mdev_device_remove_ops+0x23/0x50 [mdev]
      mdev_device_remove+0xdb/0x190 [mdev]
      mdev_device_remove+0x190/0x190 [mdev]
      device_for_each_child+0x47/0x90
      mdev_unregister_device+0xd5/0x120 [mdev]
      intel_gvt_clean_device+0x91/0x120 [i915]
      i915_driver_unload+0x9d/0x120 [i915]
      i915_pci_remove+0x15/0x20 [i915]
      pci_device_remove+0x3b/0xc0
      device_release_driver_internal+0x157/0x230
      unbind_store+0xfc/0x150
      kernfs_fop_write+0x10f/0x180
      __vfs_write+0x36/0x180
      ? common_file_perm+0x41/0x130
      ? _cond_resched+0x16/0x40
      vfs_write+0xb3/0x1a0
      ksys_write+0x52/0xc0
      do_syscall_64+0x55/0x100
      entry_SYSCALL_64_after_hwframe+0x44/0xa9

    BUG: unable to handle kernel NULL pointer dereference at 0      0000000=
00000038
      PGD 8000000405bce067 P4D 8000000405bce067 PUD 405bcd067 PM      D 0
      Oops: 0000 [#1] SMP PTI
      RIP: 0010:hrtimer_active+0x5/0x40
    Call Trace:
      hrtimer_try_to_cancel+0x25/0x120
      ? tbs_sched_clean_vgpu+0x1f/0x50 [i915]
      hrtimer_cancel+0x15/0x20
      intel_gvt_destroy_vgpu+0x4c/0xf0 [i915]
      intel_vgpu_remove+0x2c/0x30 [kvmgt]
      mdev_device_remove_ops+0x23/0x50 [mdev]
      mdev_device_remove+0xdb/0x190 [mdev]
      ? mdev_device_remove+0x190/0x190 [mdev]
      device_for_each_child+0x47/0x90
      mdev_unregister_device+0xd5/0x120 [mdev]
      intel_gvt_clean_device+0x89/0x120 [i915]
      i915_driver_unload+0x9d/0x120 [i915]
      i915_pci_remove+0x15/0x20 [i915]
      pci_device_remove+0x3b/0xc0
      device_release_driver_internal+0x157/0x230
      unbind_store+0xfc/0x150
      kernfs_fop_write+0x10f/0x180
      __vfs_write+0x36/0x180
      ? common_file_perm+0x41/0x130
      ? _cond_resched+0x16/0x40
      vfs_write+0xb3/0x1a0
      ksys_write+0x52/0xc0
      do_syscall_64+0x55/0x100
      entry_SYSCALL_64_after_hwframe+0x44/0xa9
   =20
    Fixes: bc7b0be316ae("drm/i915/gvt: Add basic debugfs infrastructure")
    Fixes: afe04fbe6c52("drm/i915/gvt: create an idle vGPU")
    Signed-off-by: Hang Yuan <hang.yuan@linux.intel.com>
    Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>

Which wasn't tagged for (and is not in any) stable trees?


--
Thanks,
Sasha=
