Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 94F8B504
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 08:41:29 +0000 (UTC)
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1AEE21DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 08:41:29 +0000 (UTC)
Received: by mail-io0-f181.google.com with SMTP id h64so13831960iod.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 01:41:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2121039.qAt5UfpHsn@aspire.rjw.lan>
References: <20170623123936.42dab05f@lwn.net>
	<alpine.LSU.2.20.1706252254190.30709@cbobk.fhfr.pm>
	<s5hd19rnvcs.wl-tiwai@suse.de> <2121039.qAt5UfpHsn@aspire.rjw.lan>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 27 Jun 2017 10:41:27 +0200
Message-ID: <CAKMK7uE+nG==pdEEDsT6or1wWa=izc1UKEyn0V-66hkVwsTmog@mail.gmail.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="UTF-8"
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	ksummit-discuss@lists.linux-foundation.org,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Jiri Kosina <jkosina@suse.cz>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 26, 2017 at 11:28 PM, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> On Monday, June 26, 2017 07:58:27 AM Takashi Iwai wrote:
>> On Sun, 25 Jun 2017 22:56:07 +0200,
>> Jiri Kosina wrote:
>> >
>> > On Sat, 24 Jun 2017, Mauro Carvalho Chehab wrote:
>> >
>> > > > There are pieces of .txt documentation falling into the "well-knows source of
>> > > > information" category, with many references to them all over the Web.
>> > > > kernel-parameters.txt is probably the most spectacular example here, but there
>> > > > are others.
>> > > >
>> > > > Let us not move or rename these, please, or at least put symbolic links in
>> > > > place to point to the new locations or similar, such that the existing WWW
>> > > > links pointing to the documentation at kernel.org still work going forward.
>> > > >
>> > > > And if we have moved or renamed them already, can we possibly make these
>> > > > links work again somehow?
>> > >
>> > > Agreed. We discussed in the past about two alternatives for those
>> > > "well known" documents:
>> > >
>> > >   1) write a small text on the old file pointing to the
>> > >      new location;
>> > >   2) use symlink.
>> > >
>> > > Right now, we're actually mixing (1) and (2). IMHO, we should either
>> > > do (1) or (2).
>> >
>> > Unfortunately option (3) has also been applied to some of the files:
>> >
>> >     $ ll Documentation/kernel-parameters.txt
>> >     ls: cannot access 'Documentation/kernel-parameters.txt': No such file or directory
>> >
>> > I wasn't sure whether this was intentional or not. But if not, I'll
>> > happily send a patch that introduces a symlink.
>>
>> If we do symlinks, wouldn't it be cleaner to separate the old doc
>> directory from the new doc directory?  That is, Documentation/* keeps
>> the old txt or symlinks while the ReST is put in another directory,
>> say, docs/* as originally suggested.
>
> That actually sounds like a good idea to me. :-)
>
> Question is if it's not too late to do that now that we have all that stuff
> under Documentation/.

I think it's a bit late, at least from more documentation-active
susbsystems like gpu/. The docbook->rst switch was pains, dealing once
more with piles of renames isn't really something I'd like to do. And
one of the main selling points of .rst was that it integrates much
more smoothly into our existing pile of .txt docs, whereas the
DocBook/ subdir was always a bit a ghetto. Forcing another split seems
ill-advised to me.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
