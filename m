Return-Path: <SRS0=kjsK=XO=lists.linuxfoundation.org=ksummit-discuss-bounces@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EF89C3A5A6
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 09:52:38 +0000 (UTC)
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C0E121929
	for <ksummit-discuss@archiver.kernel.org>; Thu, 19 Sep 2019 09:52:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C0E121929
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=pass smtp.mailfrom=ksummit-discuss-bounces@lists.linuxfoundation.org
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id F139D11D7;
	Thu, 19 Sep 2019 09:52:26 +0000 (UTC)
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F293E11DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 09:52:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D92B7876
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 19 Sep 2019 09:52:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Sep 2019 02:52:23 -0700
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="177998612"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
	by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Sep 2019 02:52:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
In-Reply-To: <CAMuHMdWGhSNu-5U0B5WN6tMRQRaAeFgcN1b=pAcXZPUpSW-ehA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<CAMuHMdU10J5zgQ0r8uoA+LFHRbyLB=AG6xygTmsxwc7T-ffdDw@mail.gmail.com>
	<87o8zgwu0m.fsf@intel.com>
	<CAMuHMdWGhSNu-5U0B5WN6tMRQRaAeFgcN1b=pAcXZPUpSW-ehA@mail.gmail.com>
Date: Thu, 19 Sep 2019 12:52:18 +0300
Message-ID: <87lfukwr3h.fsf@intel.com>
MIME-Version: 1.0
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
	documentation
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Thu, 19 Sep 2019, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> Hi Jani,
>
> On Thu, Sep 19, 2019 at 10:49 AM Jani Nikula <jani.nikula@intel.com> wrote:
>> On Thu, 19 Sep 2019, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>> > On Thu, Sep 19, 2019 at 8:57 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>> >> On Wed, Sep 18, 2019 at 10:57:28AM -0300, Mauro Carvalho Chehab wrote:
>> >> When I sent a patch, I use get_maintainer.pl then I add whoever the
>> >> wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
>> >> Cook from the CC list because they worked all over the tree and I know
>> >> them.  I also normally remove LKML if there is another mailing list but
>> >> at least one subsystem uses LKML for patchwork so this isn't safe.
>> >>
>> >> So the safest instructions are "Use get_matainer.pl and add the person
>> >> who wrote the commit in the Fixes tag".
>> >
>> > Better: perhaps get_maintainer.pl can be taught to add the author of the
>> > commit pointed to by the Fixes tag, if present?
>>
>> The drm maintainer tools [1] have that, with Cc's and reviewers picked
>> up, and appropriate Cc: stable added. On a random commit from v5.3:
>
> Thanks, but that's not scripts/get_maintainer.pl, and restricted to one out
> of N subsystems.  Not so dissimilar from what Dan was complaining about.

The point was, perhaps poorly conveyed, to provide it as a reference,
and something to steal from. You can think of it as a wrapper around
get_maintainer.pl, it's really not subsystem specific, though part of
our scripts, and it'll take you all of five minutes to make it generic
from the source (MIT):

function dim_cite
{
	local sha1

	sha1=${1:?$usage}

	git --git-dir="$DIM_PREFIX/$DIM_REPO/.git" log -1 $sha1 \
	    "--pretty=format:%H (\"%s\")%n" | \
		sed -e 's/\([0-f]\{12\}\)[0-f]*/\1/'
}

function dim_fixes
{
	local sha1 tag

	sha1=${1:?$usage}

	cd $DIM_PREFIX/$DIM_REPO
	echo "Fixes: $(dim_cite $sha1)"

	(
		git show --no-patch $sha1 | \
			sed -e 's/\(Reviewed\|Acked\|Reported\|Signed\)[a-zA-Z-]*-by:/Cc:/' | \
			sed -e 's/^    C[Cc]: */Cc: /' | grep '^Cc: '
		git show $sha1 | scripts/get_maintainer.pl  --email --norolestats --pattern-depth 1 | sed -e "s/^/Cc: /"
	) | awk '!x[$0]++'

	tag=$(git tag --contains $sha1 | grep ^v | sort -V | head -n 1)
	if [[ -n "$tag" ]]; then
		if ! echo "$tag" | grep -q -e "-rc"; then
			echo "Cc: <stable@vger.kernel.org> # ${tag}+"
		fi
	fi
}


HTH,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
