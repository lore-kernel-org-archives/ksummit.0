Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B3391D30
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:05:48 +0000 (UTC)
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 56A473D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 21:05:48 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id n2so3100324pgp.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 28 Jun 2019 14:05:48 -0700 (PDT)
Date: Fri, 28 Jun 2019 14:05:45 -0700
From: Kees Cook <keescook@chromium.org>
To: "Luck, Tony" <tony.luck@intel.com>
Message-ID: <201906281404.530F486@keescook>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
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

On Fri, Jun 28, 2019 at 01:51:03PM -0700, Luck, Tony wrote:
> On Fri, Jun 28, 2019 at 02:11:28PM -0600, Shuah Khan wrote:
> > In a recent patch discussion, I learned that some maintainers would like
> > to see patch version changes in the commit log.
> 
> Where substantial changes were made between patch versions it
> would be useful if the commit logs were adapted to say things like:
> 
>  "We considered using technique X to do this but rejected
>   it because person Y said it had problem Z"
> 
> That captures for posterity the useful information without
> bulking up the commit log with the blow-by-blow deltas of
> how the patch series evolved across 27 versions submitted
> to the mailing list.

Yeah, I usually have maintainers want (and I want) to see rationales
and prior thinking/approaches mentioned in a changelog, but the little
details tend not to be very important.

-- 
Kees Cook
