Return-Path: <chriscool@tuxfamily.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3D4892FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 06:34:58 +0000 (UTC)
Received: from mail-2y.bbox.fr (mail-2y.bbox.fr [194.158.98.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 59E9D1F9D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 May 2014 06:34:57 +0000 (UTC)
Date: Mon, 19 May 2014 08:34:55 +0200 (CEST)
Message-Id: <20140519.083455.557690327865344524.chriscool@tuxfamily.org>
To: jason@lakedaemon.net
From: Christian Couder <chriscool@tuxfamily.org>
In-Reply-To: <20140518221242.GV27822@titan.lakedaemon.net>
References: <s5h1tvuf4ov.wl%tiwai@suse.de>
	<20140518.212315.1001026942354195075.chriscool@tuxfamily.org>
	<20140518221242.GV27822@titan.lakedaemon.net>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Metadata addendum to git commit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

From: Jason Cooper <jason@lakedaemon.net>

> On Sun, May 18, 2014 at 09:23:15PM +0200, Christian Couder wrote:
>> From: Takashi Iwai <tiwai@suse.de>
> ...
>> > I tried a hackish way once ago: keeping simple text files named with
>> > $SHAID in a separate branch, and refers to it at git log or bisect
>> > time.  There must be much elegant way, I suppose, though.
>> 
>> Yeah, using "git replace" is more elegant. And there will be hopefully
>> soon the --edit option that will make it very easy to use git replace.
> 
> Yikes.  Sorry, but I don't like that at all.  I hope that feature is
> disabled by default (git replace).

By default replace refs are not fetched and not pushed. So you only
have the replace refs you created yourself on your own repo. They are
only fetched or pushed if you use or configure a refspec like
'refs/replace/*:refs/replace/*'.

You can also use the GIT_NO_REPLACE_OBJECTS environment variable or
"alias git='git --no-replace-objects'", if/when you want to make sure that
replace refs are not used.

A hook could also check that for example each replace ref you add to
your repo replaces a commit with another commit that points to the
same tree.

You could also use 2 different repos, one where you do most of your
work and don't have any replace ref, and one where you do your
bisecting and where you have replace refs. You can create, fetch and
push replace refs in your bisecting repo.

> I guess my first question is: Does the PGP signature verification of a
> signed tag fail if there are replaced commits in the history?

First any kind of Git object can be replaced, not just commits, even
tag objects. Also I think the PGP signature verification only checks
the content of the tag for signed tags or the content of the commit
for signed commits.

So it might be a good idea to disable replace refs (for example using
the GIT_NO_REPLACE_OBJECTS environment variable or
--no-replace-objects) when you want to check signatures, and maybe Git
could warn or error out if the commit or tags that are being verified
are replaced.

But if you have replace refs and some blobs or trees are replaced, you
have to trust these replace refs. (And maybe you are very right to
trust them because for example you created them yourself and never
fetched any replace ref.)

Anyway maybe we should cc Junio and other people on this because
signing is not a part of Git that I know well.

> And if
> so, is that a cryptographic failure, or a logical failure?

I don't think there is any failure.

Some things are inherently risky. For example if you bisect kernels,
you might compile and run kernels that have known security bugs, so
you have to be careful.

Best,
Christian.
