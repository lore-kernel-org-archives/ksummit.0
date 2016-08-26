Return-Path: <jani.nikula@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 835C326C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 12:27:53 +0000 (UTC)
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DDFDA190
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 12:27:52 +0000 (UTC)
From: Jani Nikula <jani.nikula@intel.com>
To: James Hogan <james.hogan@imgtec.com>, Greg KH <gregkh@linuxfoundation.org>
In-Reply-To: <20160826115022.GU13232@jhogan-linux.le.imgtec.org>
References: <20160826044651.GA25341@sasha-lappy>
	<20160826112635.GA27627@kroah.com>
	<20160826114205.GA16682@jhogan-linux.le.imgtec.org>
	<20160826115022.GU13232@jhogan-linux.le.imgtec.org>
Date: Fri, 26 Aug 2016 15:27:50 +0300
Message-ID: <87k2f3sojd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "Levin,
	Alexander" <alexander.levin@verizon.com>
Subject: Re: [Ksummit-discuss] Self nomination - Sasha Levin
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 26 Aug 2016, James Hogan <james.hogan@imgtec.com> wrote:
> [ Unknown signature status ]
> On Fri, Aug 26, 2016 at 12:42:05PM +0100, James Hogan wrote:
>> On Fri, Aug 26, 2016 at 01:26:35PM +0200, Greg KH wrote:
>> > On Fri, Aug 26, 2016 at 12:46:51AM -0400, Levin, Alexander wrote:
>> > >    - Improving tagging for stable. The "version tag" option is broken
>> > >    and the "Fixes:" tag is always preferable, how do we get people to
>> > >    use that more often? (script it somehow?
>> > >    scripts/find-version-it-fixes ?).
>> > 
>> > Oh a script like that would be nice, but how would that work in reality?
>> 
>> Not all Fixes: tags are suitable for stable though. I've been caught out
>> by patches being applied to stable (4.2 maybe) due to a Fixes tag,
>> without prerequisite patches being applied.
>
> I also find the following alias useful to find the version number a
> commit is first merged in:
>
> vc = "!vc() { for i in `git tag --contains \"$@\" | grep '^v'`; do echo \"$(git log -1 --pretty='%ct' $i) $i\"; done | sort -n | head -n1 | sed 's/^[0-9]* //g'; }; vc"
>
> Its a bit slow and hacky and there's probably better ways, but it picks
> the tag a bit more reliably than "git describe --contains". Maybe that
> could be wrapped in a script that generates a Stable tag automatically
> from a Fixes tag for when the patch is suitable for stable.

If you can trust your tags to contain versions like in the kernel, I
think you can get away with just:

	git tag --contains <committish> | grep ^v | sort -V | head -n 1

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Technology Center
