Return-Path: <geert.uytterhoeven@gmail.com>
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
In-Reply-To: <20160902095417.GJ3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902012531.GB28461@sasha-lappy>
	<20160902095417.GJ3950@sirena.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 2 Sep 2016 12:16:32 +0200
Message-ID: <CAMuHMdX1UN2WZp4K3se1MyXXWrNawwkWp_RCVYksaUKhwAxXHw@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=UTF-8
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
	backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 2, 2016 at 11:54 AM, Mark Brown <broonie@kernel.org> wrote:
>> Stable kernels have very strict restrictions that are focused on not taking
>> commits that have high potential to cause unintended side effects, incorrect
>> interactions with the rest of the kernel or just introduce new bugs.
>
>> Mixing in new features that interact with multiple subsystems is a recipe for
>> disaster. We barely pull off backporting what looks like trivial fixes, trying
>> to do the same for more than that is bound be broken.
>
> It's what people are doing for products, they want newer features but
> they also don't want to rebase their product kernel onto mainline as
> that's an even bigger integration risk.  People aren't using this kernel
> raw, they're using it as the basis for product kernels.  What this is
> doing is getting a bunch of people using the same backports which shares
> effort and hopefully makes it more likely that some of the security
> relevant features will get deployed in products.  Ideally some of the
> saved time can be spent on upstreaming things though I fear that's a
> little optimistic.
>
>> As an alternative, why not use more recent stable kernels and customize the
>> config specifically for each user to enable on features that that specific
>> user wants to have.
>
> That's just shipping a kernel - I don't think anyone is silly enough to
> ship an allmodconfig or similar in production (though I'm sure someone
> can come up with an example).
>
>> The benefit here is that if used correctly you'll get to use all the new shiny
>> features you want on a more recent kernel, and none of the things you don't
>> want. So yes, you're upgrading to a newer kernel all the time, but if I
>> understant your use-case right it shouldn't matter too much, more so if
>> you're already taking chances on backporting major features yourself.
>
> Like I say in this case updating to a newer kernel also means rebasing
> the out of tree patch stack and taking a bunch of test risk from that -
> in product development for the sorts of products that end up including
> the LSK the churn and risk from targeted backports is seen as much safer
> than updating to an entire new upstream kernel.

So it's about finding a good balance between backporting new features into
your in-house tested kernel vs. forwardporting your in-house patches to a
community-tested kernel. Mistakes can be made during both back- and
forwardporting.

Nothing new to see here...

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
