Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E149F8A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 15:06:14 +0000 (UTC)
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0137.outbound.protection.outlook.com [104.47.41.137])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 57DB6683
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 15:06:14 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Willy Tarreau <w@1wt.eu>
Date: Thu, 3 May 2018 15:06:11 +0000
Message-ID: <20180503150608.GM18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<20180501194450.GD10479@thunk.org> <20180501200019.GA7397@sasha-vm>
	<20180501205448.GE10479@thunk.org> <877eol808s.fsf@intel.com>
	<1525357984.3225.12.camel@HansenPartnership.com>
	<20180503144850.GC23311@1wt.eu>
In-Reply-To: <20180503144850.GC23311@1wt.eu>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <97AF75791B08054BA7F36D57E227EDB7@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	James Bottomley <James.Bottomley@HansenPartnership.com>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 03, 2018 at 04:48:50PM +0200, Willy Tarreau wrote:
>On Thu, May 03, 2018 at 07:33:04AM -0700, James Bottomley wrote:
>> They're definitely for bug fixes, but there's a spectrum: obvious bug
>> fixes with no side effects are easy to justify.  More complex bug fixes
>> run the risk of having side effects which introduce other bugs, so
>> could potentially destabilize the -rc process.  In SCSI we tend to look
>> at what the user visible effects of the bug are in the post -rc5 region
>> and if they're slight or wouldn't be visible to most users, we'll hold
>> them over.  If the fix looks complex and we're not sure we caught the
>> ramifications, we often add it to the merge window tree with a cc to
>> stable and a note saying to wait X weeks before actually adding to the
>> stable tree just to make sure no side effects show up with wider
>> testing.  So, as with most things, it's a judgment call for the
>> maintainer.
>
>For me this is the right, and responsible way to deal with bug fixes.
>Self-control is much more efficient than random rejection and favors
>a good analysis.

I think that the ideal outcome of this discussion, at least for me, is a
tool to go under scripts/ that would allow maintainers to get some sort
of (quantifiable) data that will indicate how well the patch was tested via
the regular channels.

At which point it's the maintainer's judgement call on whether he wants
to grab the patch or wait for more tests or reviews.

This is very similar to what James has described, it just needs to leave
his brain and turn into code :)=
