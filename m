Return-Path: <ebiederm@xmission.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ED88E11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  5 May 2018 05:03:00 +0000 (UTC)
Received: from out02.mta.xmission.com (out02.mta.xmission.com [166.70.13.232])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4A871148
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  5 May 2018 05:03:00 +0000 (UTC)
From: ebiederm@xmission.com (Eric W. Biederman)
To: Willy Tarreau <w@1wt.eu>
References: <20180503173422.GR18390@sasha-vm>
	<20180503182039.GC30522@ZenIV.linux.org.uk>
	<8669.1525427874@warthog.procyon.org.uk> <87fu377gbu.fsf@intel.com>
	<20180504130932.GI29205@thunk.org> <20180504174055.GF4649@kroah.com>
	<20180504211317.GK29205@thunk.org>
	<1525469881.4114.5.camel@HansenPartnership.com>
	<20180504215111.GX18390@sasha-vm> <20180504233542.GM29205@thunk.org>
	<20180505042356.GA24575@1wt.eu>
Date: Sat, 05 May 2018 00:02:47 -0500
In-Reply-To: <20180505042356.GA24575@1wt.eu> (Willy Tarreau's message of "Sat,
	5 May 2018 06:23:56 +0200")
Message-ID: <878t8y8zk8.fsf@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Willy Tarreau <w@1wt.eu> writes:

> On Fri, May 04, 2018 at 07:35:42PM -0400, Theodore Y. Ts'o wrote:
>> On Fri, May 04, 2018 at 09:51:14PM +0000, Sasha Levin wrote:
>> > I don't have an objection to moving this to it's own tag. It will make
>> > my scripts somewhat simpler for sure.
>> 
>> It's not a matter "moving this it's own tag", but creating a new tag
>> --- because what is in the docs is a lie.  It does not describe what
>> we do today.  And current practice is the reality, not what is in the
>> docs.
>> 
>> As to whether we should create a new tag to support explicit
>> dependencies, I'll leave that between you and Greg K-H and the rest of
>> the stable maintainers.  :-)
>
> Guys, *personally*, I've sometimes been a bit annoyed by the huge amount
> of irregular extra headers trying to compensate for horribly vague commit
> messages, and I'm pretty sure it pisses off patch authors who don't know
> anymore what to put in their description. We need to keep in mind that
> authors are humans and not machines, and that natural language remains
> the best to explain complex dependencies. I'd prefer to see :
>
>     This patch needs to be backported to all stable branches that contain
>     717d3133 and 207f5b3c (that's 3.10+) or their respective backports but
>     must be adapted (contact me) if only a backport of 717d3133 is present.
>
>     Cc: stable # v3.10+
>
> Rather than horrible stuff like this :
>
>     Cc: stable # v3.10+ (717d3133 && 207f5b3c) || WARN_ON(back(717d3133))
>
> Of course it's a bit made up, but not too far from what is being discussed
> here, probably only the next step. People will often get complex rules
> wrong, both on the producer and on the consumer side. The day we need a
> compiler to emit commit messages, we'll have to wonder if we didn't go
> too far.
>
> Also I've found the Fixes header pretty useful. It allows patch authors
> to mention what is being fixed without necessarily copying stable,
> because sometimes you'd rather not see your patch immediately backported
> or you think the risks are higher than the bug. And here as well, it's
> only suited for simple situations with a single commit ID, complex
> desriptions have to be part of the commit message body.
>
> I think that what we have now works pretty well but that some descriptions
> lack a bit of detail, especially on the impact of the bug which would help
> decide to backport or drop. This is understandable because often the person
> fixing a bug documents it for people knowing the same subsystem well. But
> when you backport fixes into other kernel versions, you don't know well
> how each subsystem works, and guessing the impact of a bug is not always
> obvious. Most of the time, authors who add Fixes: and/or Cc: stable take
> care of providing enough information, though I'd suspect that sometimes
> they're making efforts trying to figure how to place the information
> there and possibly try to avoid redundancy by writing a shorter body.
>
> At this point, I'm really not seeing what we're trying to improve or
> optimize, and to be honest this discussion worries me a bit, by just
> thinking that it could result in annoying changes...

So the way I use headers today is:
Cc: stable@vger.kernel.org
Fixes: sha1hash "commit subject"

I will use "Fixes: v2.0.1" if something is so old that it isn't in git.
If it was in bitkeeper and now in tglx's tree I will use:
History Tree: https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git

Just because you won't find the commit in Linus's git tree.

I tend not to find particularly serious bugs, just ancient ones so I
generally figure if it doesn't backport easily it probably is not a
candidate for stable.  The bug has existed for ages without anyone
really carring anyway.

Eric
