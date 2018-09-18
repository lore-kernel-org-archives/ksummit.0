Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 02D1FCA0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 08:24:58 +0000 (UTC)
Received: from out03.mta.xmission.com (out03.mta.xmission.com [166.70.13.233])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 69E8242D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 08:24:57 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
References: <CAKMK7uE=FwpPFnvOvuvGBZ0vjh3UMPW=zgSk1dmiyCLQPPuZvg@mail.gmail.com>
	<CAMuHMdVj28tZKep+DPA4W3vz28hPRZTWAb7BtuQBBTSWT3Brnw@mail.gmail.com>
	<20180917100413.22eac00d@coco.lan> <2072478.UYspZ1xLTN@avalon>
	<20180917115916.37fd5388@coco.lan>
Date: Tue, 18 Sep 2018 10:24:42 +0200
In-Reply-To: <20180917115916.37fd5388@coco.lan> (Mauro Carvalho Chehab's
	message of "Mon, 17 Sep 2018 11:59:16 -0300")
Message-ID: <87zhwfi56d.fsf@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
	management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Mauro Carvalho Chehab <mchehab+samsung@kernel.org> writes:

> Em Mon, 17 Sep 2018 17:14:29 +0300
> Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:
>
>> On Monday, 17 September 2018 16:04:13 EEST Mauro Carvalho Chehab wrote:
>> > Em Mon, 17 Sep 2018 14:03:55 +0200 Geert Uytterhoeven escreveu:  
>> > > On Mon, Sep 17, 2018 at 1:43 PM Mauro Carvalho Chehab wrote:  

>> > >> The communication traffic between the developers there is usually
>> > >> not relevant (nor wanted) at LKML.  
>> 
>> Not on LKML, but it should be public, searchable and mirrored, not hidden 
>> behind an authentication, or stored in a single location.
>
> Yeah, being public and searchable are important features.
>
> However, nowadays, the concept of "stored in a single location" is
> something that doesn't make much sense: most of stuff are stored on
> clouds, specially if one is using a big service provider. On a cloud
> service, the concept of "mirrored" also is not relevant: a single
> URL usually is handled by multiple servers. Usually, it is invisible
> to the users what is the real infrastructure behind the service.

But "single point of failure" continues to be relevant.  It is straight
forward to have a personal archive of a mailing list.  Not so much with
other solutions.

>> > >> What we usually do on normal subsystems is to have those discussions
>> > >> "filtered" on a separate mailing list. I don't see why not use a
>> > >> web-based interface for such purpose.  
>> 
>> There are multiple reasons. One of them is that you'll lose the whole history 
>> the day the project is deleted from gitlab, github or any other single 
>> provider. 
>
> This can happen whatever infra is used. That's why the git logs should be
> clear enough to not depend on it. I'm pretty sure that, whatever we use
> nowadays (even mirrored ML logs) will some day be replaced by something
> else. Try to seek, for example, for the old usenet messages. The only
> thing that is more warranted to survive as time goes by are the patch
> logs.

It is absolutely reasonable to expect discussions to be public and to
build the infrastructure to make it happen.  Certainly such archives
have been invaluable in my work on the kernel for tracking down why do
the things that we do in the kernel.

One of the more interesting developments in this area recently is the
public-inbox project, and it's use in lore.kernel.org.  I know have all
of the archives of linux-kernel sitting in a little git archive on my
laptop.  Depending on what I am doing a local git-grep can be more
productive than looking at the the nice searchable web archive.

It is my hope that as this method of mirroring and archiving a mailling
list become more common sites like github and gitlab will adopt similar
strategies for the discussion that happen on their sites.

Eric
