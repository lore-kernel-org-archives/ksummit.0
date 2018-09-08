Return-Path: <jic23@jic23.retrosnub.co.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7E722B14
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 08:54:50 +0000 (UTC)
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk [46.235.226.198])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2C4B5623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 08:54:48 +0000 (UTC)
Date: Sat, 08 Sep 2018 09:45:32 +0100
In-Reply-To: <20180907164454.3713a8be@coco.lan>
References: <s5hbm9ccbie.wl-tiwai@suse.de> <20180907164454.3713a8be@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: ksummit-discuss@lists.linuxfoundation.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Takashi Iwai <tiwai@suse.de>
From: Jonathan Cameron <jic23@jic23.retrosnub.co.uk>
Message-ID: <6B686C53-9671-43D3-B697-F341D15C05B5@jic23.retrosnub.co.uk>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] How can we treat staging
	drivers better?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 7 September 2018 20:44:54 BST, Mauro Carvalho Chehab <mchehab+samsung@k=
ernel=2Eorg> wrote:
>Em Wed, 05 Sep 2018 15:35:53 +0200
>Takashi Iwai <tiwai@suse=2Ede> escreveu:
>
>> The staging driver is a wonderful process to promote the downstream
>> code to the upstream, but I have doubt whether it's working really as
>> expected for now=2E
>>=20
>> - Often the drivers live forever in staging although they should have
>>   been moved to the upper, properly maintained, subsystems=2E
>>=20
>> - Code changes in staging are mostly only scratching surfaces, minor
>>   code style cleanups, etc, what checkpatch suggests=2E
>>=20
>> - There are little communications with the corresponding subsystem;
>>   already a few times I was surprised by casually finding a staging
>>   driver code by grepping for preparing API changes=2E
>
>What we do in the case of media drivers is that we have a
>	drivers/staging/media
>directory with a proper MAINTAINERS' entry:
>
>MEDIA INPUT INFRASTRUCTURE (V4L/DVB)
>M:	Mauro Carvalho Chehab <mchehab@kernel=2Eorg>
>P:	LinuxTV=2Eorg Project
>L:	linux-media@vger=2Ekernel=2Eorg
>W:	https://linuxtv=2Eorg
>Q:	http://patchwork=2Ekernel=2Eorg/project/linux-media/list/
>T:	git git://linuxtv=2Eorg/media_tree=2Egit
>S:	Maintained
>F:	Documentation/devicetree/bindings/media/
>F:	Documentation/media/
>F:	drivers/media/
>F:	drivers/staging/media/
>=2E=2E=2E
>
>This way, we receive notifications (both on my e-mail and at the media
>ML) about changes there=2E
>
>I also asked Greg to avoid picking patches directly to it=2E So,
>we're able to manage what's there=2E

Likewise, IIO staging driver patches are handled on the same mailing list =
as non staging ones=2E

Partly that is historical given IIO itself graduated from staging but it w=
orks really well=2E
If people aren't interested they can just not join in with those threads=
=2E

Perhaps this model would help more generally?

A really good use we make of the drivers in staging is to mentor new contr=
ibutors through
cleaning them up=2E  We normally only drop drivers if no one has hardware =
and it is not easy to get=2E
This is not typically trivial clean up but more major rework=2E

Often hardware companies are happy to lend or give dev boards to enable th=
is=2E This includes
drivers that set there unloved for lots of years=2E=2E=2E

>
>>=20
>> - Then some drivers are pushed back after long time stay in staging
>>   (lustre is the recent remarkable case);
>>   it's understandable, but is definitely no happy end in both sides,
>>   after all=2E
>
>We had a recent case: the (really big) atomisp driver=2E
>
>It is not good to apply a driver and remove it some Kernel versions
>later without actually merging it at the "real" mainstream , but
>I guess this is unavoidable, if we want to have a staging area=2E
>
>In the case of media, we've been succeeded on promoting drivers
>from staging, and to use staging as a step before drivers removal=2E
>
>But yeah, I feel the pain: sometimes stuff gets "stucked" there
>for a long time without any significant changes, as it is easy
>to forget what's under the staging carpet=2E
>
>Not sure what's the best way to solve it=2E Perhaps we could have a=20
>"soft" policy of removing drivers from staging after a certain number
>of
>Kernel releases, and some robot monitoring it, dropping e-mails to
>both subsystem maintainers and patch authors when a driver takes
>longer than that=2E The maintainer could then check if the patches
>submitted along that time were in the direction of removing it
>from staging and if it would be worth to give more time to the
>developer to fix, or otherwise if all he says is just whitespace
>and checkpatch cleanup to just ditch it=2E
>
>>=20
>> So, I'd like to hear how we can improve the staging driver situation,
>> a better communication with staging driver people and the subsystem /
>> core devs=2E
>>=20
>>=20
>> thanks,
>>=20
>> Takashi
>> _______________________________________________
>> Ksummit-discuss mailing list
>> Ksummit-discuss@lists=2Elinuxfoundation=2Eorg
>> https://lists=2Elinuxfoundation=2Eorg/mailman/listinfo/ksummit-discuss
>
>
>
>Thanks,
>Mauro
>_______________________________________________
>Ksummit-discuss mailing list
>Ksummit-discuss@lists=2Elinuxfoundation=2Eorg
>https://lists=2Elinuxfoundation=2Eorg/mailman/listinfo/ksummit-discuss

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
