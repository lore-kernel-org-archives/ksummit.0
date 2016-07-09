Return-Path: <vbabka@suse.cz>
To: Johannes Berg <johannes@sipsolutions.net>, Jiri Kosina
	<jikos@kernel.org>, "Luck, Tony" <tony.luck@intel.com>
References: <alpine.LNX.2.00.1607082339040.24757@cbobk.fhfr.pm>
	<5780334E.8020801@roeck-us.net>
	<3908561D78D1C84285E8C5FCA982C28F3A15659B@ORSMSX114.amr.corp.intel.com>
	<alpine.LNX.2.00.1607091028050.24757@cbobk.fhfr.pm>
	<1468056541.4837.34.camel@sipsolutions.net>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <57814D4E.9000001@suse.cz>
Date: Sat, 9 Jul 2016 21:15:26 +0200
MIME-Version: 1.0
In-Reply-To: <1468056541.4837.34.camel@sipsolutions.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linux-foundation.org"
	<ksummit-discuss@lists.linux-foundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] stable workflow
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/09/2016 11:29 AM, Johannes Berg wrote:
> On Sat, 2016-07-09 at 10:34 +0200, Jiri Kosina wrote:
>
> Perhaps a hybrid model, close to what we have today, would work? If a
> patch is proposed for stable, instead of including it by default, ask
> the maintainer(s) to separately acknowledge the patch for stable? IOW,
> rather than sending a patchbomb that requires an explicit NACK (with
> the previously discussed signal/noise problem), just send a list of
> commits and ask maintainers to edit it? They could remove and add
> commits then.

Does it have to be strictly maintainers? What if we just require that
*somebody* (maintainer or otherwise) tags the patch with something like
a "Stable-Acked-By", which should mean taking more responsibility for it
than just forwarding a patch to stable without consequences. It should
imply that the acker has checked the patch in the context of the
particular kernel version, and be clearly separated from acks/reviews of
the mainline commit. It would be of course better if stable tree
maintainer would check if the acking person is a regular contributor of
the subsystem (I guess get-maintainers.pl with its git checking can help
here).
This could be required initially at least for patches where the Cc:
stable wasn't already present at time of maintainer's signed-off-by.

> Yes, maintainers would still have some more work with that than the
> current "fire & forget" approach, but it's more "fire & get a reminder"
> rather than what you're proposing which would require me to track it
> all, across various stable releases managed by various people, which
> frankly I can't imagine being able to do (or even find qualified people
> willing to help me do that, right now.)
> 
> johannes
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
