Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E785788A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 14:55:40 +0000 (UTC)
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0131.outbound.protection.outlook.com [104.47.32.131])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 978D934F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  3 May 2018 14:55:39 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Guenter Roeck <linux@roeck-us.net>
Date: Thu, 3 May 2018 14:55:36 +0000
Message-ID: <20180503145533.GK18390@sasha-vm>
References: <20180501163818.GD1468@sasha-vm>
	<CAMuHMdWNFz_9OpddZ6tTaQcNVH01pkhwd0+3Z31uDcZvbkV6Ow@mail.gmail.com>
	<20180502195138.GC18390@sasha-vm>
	<CAMuHMdW_i-KQpqMz0zsz77tRcE-Sron5zAyh0SHAOJ5ap7x60w@mail.gmail.com>
	<20180503000620.GA29205@thunk.org>
	<ed65dc49-dad0-21a1-676c-f9ba43ba5c6c@roeck-us.net>
In-Reply-To: <ed65dc49-dad0-21a1-676c-f9ba43ba5c6c@roeck-us.net>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <694DD0E4A200374191C4CF1CFDF8C0C6@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 02, 2018 at 05:38:32PM -0700, Guenter Roeck wrote:
>On 05/02/2018 05:06 PM, Theodore Y. Ts'o wrote:
>>On Wed, May 02, 2018 at 10:41:56PM +0200, Geert Uytterhoeven wrote:
>>>
>>>Between v4.17-rc1 and v4.17-rc3, there are 660 non-merge commits, of whi=
ch
>>>   - 245 carry a Fixes tag,
>>>   - 196 carry a CC stable,
>>>   - 395 contain the string "fix".
>>>(non-mutually exclusive)
>>>
>>>That leaves us with 200 commits not falling in the bugfix category.
>>
>>Some non-bug fixes are allowed in -rc2.  So perhaps what might be
>>interesting is to look at v4.16 (which is completed), and look at the
>>distribution of commits:
>>
>>	* regressions fixes (for bugs introduced during the current
>>		release cycle)
>>	* "normal" bug fixes
>>	* commits which don't touch code (e.g., spelling or
>>		documentation-only fixes)
>>	* other commits (features or cleanup fixes)
>>
>>at each rcX level.  The historic "standard" has been feature commits
>>in -rc1 and -rc2 (tolerated, but ideally should before the merge
>>window), bug fixes / regressions in -rc3 and -rc4, and after -rc4,
>>regression fixes only.  It would be interesting to see how well we
>>have been holding to the historical ideal.
>>
>>It would then be intersting to use Sasha's analysis to see whether
>>there are more bug fixes caused by regression fixes versus normal bug
>>fixes, and whether or not they are common when fixes come "out of
>>cycle" --- for example, a non-regression bug fix in -rc5 or -rc6.
>>
>>Because if that last is the case, then the prescription is very simple
>>and not controversial --- bug fixes found post -rc4 should be held to
>>the next merge window.
>>
>
>Holding up even fixes for severe bugs for 4-6 weeks ? Seriously, that is
>unrealistic. Holding up the fix for the next SpeckHammer because it was no=
t
>ready before -rc4 ? I don't think so.

For severe problems, the patch usually gets more than enough reviews and
testing, so I don't see a need to soak it in -next more than some
minimal amount of time to get bot coverage.

However, these things show up only a few times per year. Most of the
fixes even in late -rc cycles are for older bugs that aren't too
critical. We can't base our decision on severe bugs that get exceptional
treatment anyways (see PTI getting pushed in -stable).

>Even when not counting severe problems, you are adding lots of additional =
work
>for those who do and want to rely on stable releases to merge in bug fixes=
.
>Sure, I am at times annoyed having to deal with a regression in a stable
>release, but it very much beats digging through various mailing lists for
>pending patches to fix CVEs, or for crashes seen in the field, just becaus=
e
>they are held hostage by some restrictive process. Even worse, I'd end up
>picking the regressions anyway because I can _not_ wait those 4-6 weeks
>plus the time it takes for the fixes to show up in a stable release.

I think that for -stable we don't have a good idea how soon we want to
merge patches in. On one hand enterprise distro folks complain we're
jumping the gun, and on the other hand folks like yourself claim we're
too slow :)

>Really, that just makes the situation worse for everyone. We would be much
>better off by further improving test coverage.

I'm definitely not saying "no" to more test coverage, but these are work
streams that can happen in parallel.=
