Return-Path: <prvs=02196eb8e1=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 70227AB4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 19:03:43 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
	[67.231.145.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id EDFD41FA42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 22 May 2014 19:03:42 +0000 (UTC)
Message-ID: <537E4ACB.8050605@fb.com>
Date: Thu, 22 May 2014 15:06:51 -0400
From: Chris Mason <clm@fb.com>
MIME-Version: 1.0
To: Dan Williams <dan.j.williams@intel.com>, "Theodore Ts'o" <tytso@mit.edu>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>	<20140521201108.76ab84af@notabene.brown>	<CAPcyv4itcQzi1CMFYR-+rRovccwMzg0V0B0smU8KMNLVM5SEVg@mail.gmail.com>	<2980546.hqgiQV7seV@vostro.rjw.lan>	<CAPcyv4hJvjY94-agCi8Twz-Np8_vxv3G7+eFSaAPjVOVyQ0gOQ@mail.gmail.com>	<20140522154859.GA28971@thunk.org>	<CAPcyv4jxFM=gqDbEmyaXhot4OehsM6B3hsBVLcuq+ueE6i_z5A@mail.gmail.com>
	<CAPcyv4iqsMpL-_eaFns+mZ0bdymq9i4BQCzvW_vyAuB=+pQ3Mw@mail.gmail.com>
In-Reply-To: <CAPcyv4iqsMpL-_eaFns+mZ0bdymq9i4BQCzvW_vyAuB=+pQ3Mw@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/22/2014 02:42 PM, Dan Williams wrote:
> On Thu, May 22, 2014 at 9:31 AM, Dan Williams <dan.j.williams@intel.com> wrote:
> 
> Interesting quote / counterpoint from Dave Chinner that supports the
> "don't do this for filesystems!" sentiment:
> 
> "The development of btrfs has shown that moving prototype filesystems
> into the main kernel tree does not lead stability, performance or
> production readiness any faster than if they stayed as an out-of-tree
> module until most of the development was complete. If anything,
> merging into mainline reduces the speed at which a filesystem can be
> brought to being feature complete and production ready."
> 
> The care that must be taken with merging experiments is accidentally
> leaking promises that you don't intend to keep to users.

Not too surprising, but I disagree with Dave here.  Having things
upstream earlier increases community ownership, and it helps reduce
silos of private code in the project.

Btrfs does have its warts, but it also looks like a Linux filesystem.
Out of tree, it would be something different, and certainly less than it
is now.

-chris
