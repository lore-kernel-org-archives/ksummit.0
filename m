Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3E509CFC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 07:11:55 +0000 (UTC)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E0E5E8D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 07:11:53 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id c22-v6so6581115iob.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Sep 2018 00:11:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180920070100.GA21848@localhost>
References: <20180918162948.769dda1d@coco.lan>
	<1537356482.4640.7.camel@HansenPartnership.com>
	<20180919083749.49268562@coco.lan> <20180919090332.723c1b75@coco.lan>
	<1537366581.6816.1.camel@HansenPartnership.com>
	<20180919165552.0f30bbef@coco.lan>
	<CAPM=9tyrsJx5oaY-umNAmNDGUAFQWQ-dmh=FdsOUEQynr_yqjg@mail.gmail.com>
	<20180919210122.694bf4a3@coco.lan>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EB915@USCULXMSG01.am.sony.com>
	<875zz0y8ym.fsf@intel.com> <20180920070100.GA21848@localhost>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 20 Sep 2018 09:11:52 +0200
Message-ID: <CAKMK7uGvhTFmq1RZX7OZ8=AW+voh+gm386durxRD+D5jeHxrQg@mail.gmail.com>
To: Josh Triplett <josh@joshtriplett.org>,
	David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>, Tim.Bird@sony.com,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER TOPIC FOR KS] CoC and Linus
 position (perhaps undocumented/closed/limited/invite session)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Sep 20, 2018 at 9:01 AM, Josh Triplett <josh@joshtriplett.org> wrote:
> On Thu, Sep 20, 2018 at 09:33:05AM +0300, Jani Nikula wrote:
>> On Thu, 20 Sep 2018, Tim.Bird@sony.com wrote:
>> > My view is that it's intended to be a social document, with guidelines
>> > for actions within the community  (Actions by maintainers, actions
>> > by contributors, actions by the TAB).  To me it's more like rules for
>> > a party at my house.  If someone doesn't abide by the rules, I'll ask
>> > them to leave the party.  And I'll ask others at the party to remind people
>> > to abide by the rules.  But the person kicked out can hardly call the cops
>> > on me for doing so.
>>
>> Agreed.
>>
>> I think there's much more value in adopting a widely used code of
>> conduct than writing your own, or even trying to tweak it. If a project
>> uses the Contributor Covenant, you pretty much know the rules without
>> actually having to read another document and wonder what this all means.
>> In this regard, it's really not unlike the GPL for copyleft licenses;
>> one acronym tells you what you can and can't do.

Yup, this matches the universal recommendation we've received when
looking into what CoC to wrap freedesktop.org in.

>> With that perspective, I think the changes proposed in this thread do
>> more harm than good. If people still insist the text should be improved,
>> I think the proper flow is to file issues or pull requests to
>> Contributor Covenant upstream [1], and later update to a new version of
>> the document.
>
> Seconded. I've seen many changes accepted upstream, and it seems
> reasonable to start there first.
>
> To the extent we need any kernel-specific process clarifications that
> *can't* usefully go upstream, I would suggest keeping them in a separate
> document.

This is the same approach we're picking on the freedesktop.org/x.org
foundation side (the freedesktop.org CoC applied to a lot more than
just drm). We're still working on some of the process and
implementation details (e.g. the exact appeals procudures isn't
defined yet). But that's all going to be written out in a separate
policy, not in the code of conduct itself.

I think that's also a good place to put clarifications (along the line
of what David Woodhouse just suggested in another reply), like that we
don't consider email addresses that showed up on public mailing lists
as private data. Which is also what the freedesktop.org privacy policy
spells out: If you send mails to mailing lists, everything in there is
public (and due to the nature of distributed archives, can't be taken
down again, since freedesktop.org doesn't even control them). If you
don't like that, don't send mails to mailing lists.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
