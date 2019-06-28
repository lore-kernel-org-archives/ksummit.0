Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D4508CDB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 20:51:04 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 42E3A13A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 20:51:04 +0000 (UTC)
Date: Fri, 28 Jun 2019 13:51:03 -0700
From: "Luck, Tony" <tony.luck@intel.com>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jun 28, 2019 at 02:11:28PM -0600, Shuah Khan wrote:
> In a recent patch discussion, I learned that some maintainers would like
> to see patch version changes in the commit log.
> 
> I went looking in the git log and found a handful of recent commits with
> "Changes since" type information in the commit logs. It appears to be
> maintainer preference and a recent trend.
> 
> I see the value in including the information. It can be informative
> and valuable for future work in the area.
> 
> Is this something that we would like to see in all commits going forward? If
> so, updating submitting patch documentation and making
> sure the version information evolves from "informal" to more formal
> nature that fits in with the commit logs would be helpful.
> 
> Making sure it doesn't get out of hand and commit logs don't
> become too long to be useful would also be helpful.
> 
> Late entry, as I happened to come across this a day or two ago.

Sounds somewhat pointless. Picking on a recent commit I see:

    Changes since:
    v2:
     - Added Fixes tag to patch 1
     - Fixed typo
     - added GSWIP_TABLE_MAC_BRIDGE_STATIC and made use of it
     - used GSWIP_TABLE_MAC_BRIDGE in more places
    
    v1:
     - fix typo signle -> single

I don't see why someone in the future trying to debug some problem
introduced by this commit would care that earlier versions had some
spelling mistakes or were missing a Fixes: tag. :-)

Where substantial changes were made between patch versions it
would be useful if the commit logs were adapted to say things like:

 "We considered using technique X to do this but rejected
  it because person Y said it had problem Z"

That captures for posterity the useful information without
bulking up the commit log with the blow-by-blow deltas of
how the patch series evolved across 27 versions submitted
to the mailing list.

-Tony
