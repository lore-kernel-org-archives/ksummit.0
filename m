Return-Path: <neilb@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 447A7523
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 02:56:30 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26C5B20119
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 02:56:29 +0000 (UTC)
Date: Fri, 16 May 2014 12:56:11 +1000
From: NeilBrown <neilb@suse.de>
To: Dan Williams <dan.j.williams@gmail.com>
Message-ID: <20140516125611.06633446@notabene.brown>
In-Reply-To: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
	boundary="Sig_/+YD094Ez4+450kob3vsPL=q";
	protocol="application/pgp-signature"
Cc: Dan J Williams <dan.j.williams@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

--Sig_/+YD094Ez4+450kob3vsPL=q
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Thu, 15 May 2014 16:13:58 -0700 Dan Williams <dan.j.williams@gmail.com>
wrote:

> What would it take and would we even consider moving 2x faster than we
> are now?=20

Hi Dan,
 you seem to be suggesting that there is some limit other than "competent
 engineering time" which is slowing Linux "progress" down.

 Are you really suggesting that?  What might these other limits be?

 Certainly there are limits to minimum gap between conceptualisation and
 release (at least one release cycle), but is there really a limit to the
 parallelism that can be achieved?

NeilBrown


>          A cursory glance at Facebook's development statistics [1]
> shows them handling more developers, more commits, and a higher rate
> of code growth than kernel.org [2].  As mentioned in their development
> process presentation, "tools" and "culture" enable such a pace of
> development without the project flying apart.  Assuming the response
> to the initial question is not "we're moving fast enough, thank you
> very much, go away", what would help us move faster?  I submit that
> there are three topics in this space that have aspects which can only
> be productively discussed in a forum like kernel summit:
>=20
> 1/ Merge Karma: Collect patch review and velocity data for a
> maintainer to answer questions like "am I pushing too much risk
> upstream?", "from cycle to cycle am I maintaining a consistent
> velocity?", "should I modulate the scope of the review feedback I
> trust?".  I think where proposals like this have fallen over in the
> past was with the thought that this data could be used as a weapon by
> toxic contributors, or used to injure someone's reputation.  Instead
> this would be collected consistently (individually?), for private use
> and shared in a limited fashion at forums like kernel summit to have
> data to drive "how are we doing as a community?" discussions.
>=20
> 2/ Gatekeeper: Saying "no" is how we as a kernel community mitigate
> risk and it is healthy for us to say "no" early and often.  However,
> the only real dimension we currently have to say "no" is "no, I won't
> merge your code".  The staging-tree opened up a way to give a
> qualified "no" by allowing new drivers a sandbox to get in shape for
> moving into the kernel-tree-proper while still being available to end
> users.  The idea with a Facebook-inspired Gatekeeper system is to have
> another way to say "no" while still merging code.  Consider a facility
> more fine-grained than the recently deprecated CONFIG_EXPERIMENTAL,
> and add run-time modification capability.  Similar to loading a
> staging driver, overriding a Gatkeeper-variable (i.e. where a
> maintainer has explicitly said "no") taints the kernel.  This then
> becomes a tool for those situations where there is value / need in
> distributing the code, while still saying "no" to its acceptability in
> its current state.
>=20
> 3/ LKP and Testing:  If there was a generic way for tools like LKP to
> discover and run per-subsystem / driver unit tests I am fairly
> confident LKP would already be sending the community test results. LKP
> is the closest we have to Facebook-Perflab (automated regression
> testing environment), and it's one of the best tools we have for
> moving development faster without increasing risk in the code we
> deliver.  Has the time come for a coordinated unit-test culture in
> Linux kernel development?
>=20
> This topic proposal is a self-nomination (dan.j.williams@intel.com)
> for attending Kernel Summit, and I also nominate Fengguang Wu
> (fengguang.wu@intel.com) to participate in any discussions that
> involve LKP.
>=20
> [1]: http://www.infoq.com/presentations/Facebook-Release-Process
> [2]: http://www.linuxfoundation.org/publications/linux-foundation/who-wri=
tes-linux-2013
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss


--Sig_/+YD094Ez4+450kob3vsPL=q
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIVAwUBU3V+Uznsnt1WYoG5AQL58g//e8ZcfjvFboW0NR1demK1//vkVibfPBmk
b82tbOv8TTyt8qUxCDQjtYjWSgVVAN0DdpwuhCdXmR62htAmfTVXCxex0luZUzS/
4OuhJW5bgnDr20JVlG7w4GA/u3VbabZAtzbL9IH0/1e4kpsqBQ2IsNp5SXeU6lGg
saxmO7sV0YJ5Do+PKvP0OUWW8Bvw6FO0EFcEnJzV4Gr/D9HzxbedOfOr8q1H1xoq
c2zTlWpL187aK68UP2PgkO42JEh1UpxJiq22injnaxOl7XG2upYgB9WWo1tz9xDc
dpevRCO7NmPNCsfxGAs0JVNXODKIvTiXarv0EIyBYMzZmy+yRRzygjmcvQ1LUg1j
YLj2oYBQpYaaDKAlI5G2fPD9G/5snvq9jD0iTPK62cyAyQ8j9DYBAM8sIeR7pmuH
To6C7xLMc00oX3gNxNKLuRl5SYwzE6NnGJEgX1envkI7RmDuQInAOswM/BzHjuZR
252cZVs+vOufOinlTjVI1T+Ib9L/dc4vOu2r60Tx6v56M4d6Y8wstdKMeI2IeMik
+GsXEP5dJ5LgtNhDgBBZ66fOyeY5dyvS9CUyg58wrVhl0OH+EXED1/4bVIOgnD3w
bEbXKeLxdPATXYXEgt65yH4M3SHHi//zVCdOb51XYq9V/oFQ/LWNfkWDYKJM1/Ly
Gz0TEt9+UOg=
=8y0s
-----END PGP SIGNATURE-----

--Sig_/+YD094Ez4+450kob3vsPL=q--
