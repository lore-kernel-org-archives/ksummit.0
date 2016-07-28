Return-Path: <bhelgaas@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DBECC413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:14:14 +0000 (UTC)
Received: from mail-yw0-f176.google.com (mail-yw0-f176.google.com
	[209.85.161.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2B0021A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 22:14:14 +0000 (UTC)
Received: by mail-yw0-f176.google.com with SMTP id z8so99613141ywa.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 28 Jul 2016 15:14:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160726162238.GE3703@f23x64.localdomain>
References: <CAKMK7uEuqLLf2bCyB-sAuu5WvVA1Kp7Jvc33k3um5DfdQr4eyg@mail.gmail.com>
	<20160722200206.GA3703@f23x64.localdomain>
	<CAKMK7uEeNuts2FzUAS7NzWjP_yYhOAgT4Q-QtVixm0CozOf0AQ@mail.gmail.com>
	<20160726162238.GE3703@f23x64.localdomain>
From: Bjorn Helgaas <bhelgaas@google.com>
Date: Thu, 28 Jul 2016 17:13:53 -0500
Message-ID: <CAErSpo7Us+TpAxwqgefpmGmBj0VgH-ACi3DcTejCC9QZBVyOXw@mail.gmail.com>
To: Darren Hart <dvhart@infradead.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dave Airlie <airlied@linux.ie>, "Nikula,
	Jani" <jani.nikula@linux.intel.com>,
	Grant Likely <grant.likely@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] (group) maintainership models
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 26, 2016 at 11:22 AM, Darren Hart <dvhart@infradead.org> wrote:
> On Mon, Jul 25, 2016 at 07:57:04AM +0200, Daniel Vetter wrote:
>> On Fri, Jul 22, 2016 at 10:02 PM, Darren Hart <dvhart@infradead.org> wrote:
>> > On Wed, Jul 20, 2016 at 02:11:58PM +0200, Daniel Vetter wrote:
>> >> In my very first KS I found the maintainership model presentations
>> >> (x86-tip & armsoc) rather interesting. And last year we've had an
>> >> ad-hoc discussion about group maintainership again. I think drm&i915
>> >> would be an interesting case since over the past year I've done some
>> >> changes which are at the edge of what's common in the kernel, and it
>> >> seems to work (at least for us) fairly well. I discussed this a bit
>> >> with a few folks at ELC San Diego too.
>> >>
>> >> Short summary: i915 has now a two-level maintenance model with 2
>> >> maintainers (who take the blame) and 15 people who can push patches.
>> >> In a way a rather big group, but not so big that people don't all know
>> >> each another any more personally. We have some detailed docs about the
>> >> patch flow and expectations:
>> >>
>> >> https://01.org/linuxgraphics/gfx-docs/maintainer-tools/drm-intel.html
>> >>
>> >> and about the dim tool used to support this all
>> >>
>> >> https://01.org/linuxgraphics/gfx-docs/maintainer-tools/dim.html
>> >>
>> >> But I think the more interesting bits are why I decided to try this
>> >> out, what I hoped would happen, what I feared might happen. And with 1
>> >> year of experience, what actually happens and what I think is needed
>> >> to make this work and an actual benefit over more traditional
>> >> maintainer models. And of course I'd like to compare notes with other
>> >> group maintainers.
>> >
>> > I'd be interested in the discussion. I think having it would also serve to
>> > minimize the differences between policies across subsystems (which is a common
>> > topic people have raised with me).
>>
>> Not sure I'm helping, since I think this new i915 model makes the
>> spread in different policies worse ;-) What do you have in mind here?
>
> Just talking about what maintainers are doing, which is always evolving, will
> help keep us in sync, and adopting improved methods.

I'm interested in this discussion, since I still work with stone
knives and bearskins.
