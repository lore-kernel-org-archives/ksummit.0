Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 142A2D60
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 19:43:17 +0000 (UTC)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0098.outbound.protection.outlook.com [104.47.36.98])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C9A1716
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 10 Sep 2018 19:43:16 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 10 Sep 2018 19:43:11 +0000
Message-ID: <20180910194310.GV16300@sasha-vm>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
In-Reply-To: <CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B526F4825F8A8441A9F0C2F6692CCCBD@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 08:52:40AM -0700, Linus Torvalds wrote:
>So this is what my argument really boils down to: the more critical a
>patch is, the more likely it is to be pushed more aggressively, which
>in turn makes it statistically much more likely to show up not only
>during the latter part of the development cycle, but it will directly
>mean that it looks "less tested".
>
>And AT THE SAME TIME, the more critical a patch is, the more likely it
>is to also show up as a problem spot for distros. Because, by
>definition, it touched something critical and likely subtle.
>
>End result: BY DEFINITION you'll see a correlation between "less
>testing" and "more problems".
>
>But THAT is correlation. That's not the fundamental causation.
>
>Now, I agree that it's correlation that makes sense to treat as
>causation. It just is very tempting to say: "less testing obviously
>means more problems". And I do think that it's very possibly a real
>causal property as well, but my argument has been that it's not at all
>obviously so, exactly because I would expect that correlation to exist
>even if there was absolutely ZERO causality.
>
>See what my argument is? You're arguing from correlation. And I think
>there is a much more direct causal argument that explains a lot of the
>correlation.

Both of us agree that patches in later -rc cycles are buggier. We don't
agree on why, but I think that it actually doesn't matter much. For the
sake of the argument, let's go with what you're saying and assume that
they're buggier because they are are more critical, tricky and subtle.

So we have this time period of a few weeks where we know that we're
going to see tricky patches. What can we do to better deal with it?
Saying that we'll just see more bugs and we should just live with it
because it's "BY DEFINITION" is not really a good answer IMO.

For stable trees, we can address that by waiting even longer before
picking up -rc5+ stuff, but that will move us further away from your
tree which is an undesirable effect.

I don't have anything beyond guesses, but I don't think the
solution here is WONTFIX.

--
Thanks,
Sasha=
