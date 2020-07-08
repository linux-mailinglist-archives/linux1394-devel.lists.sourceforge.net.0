Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 207BD21890F
	for <lists+linux1394-devel@lfdr.de>; Wed,  8 Jul 2020 15:31:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jtAAr-0001sy-Tv; Wed, 08 Jul 2020 13:31:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1jtAAr-0001sp-1M
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Jul 2020 13:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5euriczBNHgvO+QkGvKaxx3LEAQ+A5gmsFTqDV9t2VE=; b=R+J4hk1/BsUvxb1LgP/ptDPMc2
 NB7IgChiJjrSgK4c/QTGealR/6Uj/NcDEAVYEM3EqreEusizOokIj2RI6zYr7B0OlxeM7PZqJS8p+
 vtFuVJJ1OYqva/eAG1wF2aSQmkhxzpAIUtVFh7UiMngV2yYjsf08iaKcOuFQ5lf6kXlE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5euriczBNHgvO+QkGvKaxx3LEAQ+A5gmsFTqDV9t2VE=; b=ZihzP97gjhIWectIJTbm6SeMsT
 A6HoOzTbHwqYxHwNB+Pgo2Sm2sJtrrmbEMYzJl1VVlEDkrwas9xnqi/LG+M81HQR9rySyYAYWxzUT
 dS5Saj8TxJJfrrY57fnCI9YfQUA+np/CzzAy5pwz5goac9hzOv6/2C9etwPyCpmlUk5s=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jtAAo-00HJJB-Of
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Jul 2020 13:31:44 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 04C01B36;
 Wed,  8 Jul 2020 09:06:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 08 Jul 2020 09:06:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=5euriczBNHgvO+QkGvKaxx3LEAQ
 +A5gmsFTqDV9t2VE=; b=DErv8HYtIB09+qRx+5eA9nK5WTLXeHlmaABOwwhU3aJ
 5rYe0RexKQeWmUiKZJihNZB8z4HqoOThjXFd0HmLQeDGjuopV1hbzD0ao9ReyLg6
 wGUASy/OAUzeaDWQMHYafJExhXQJ8zWEV9nodvpntTFRgVnV/bVvm/b1jh8DiV3c
 Fn8psVEM8GabfsckGLuDQD+uMO16kgM3Vq6gsoyFV4oCZ2grV41EIIc8ajTG6+Is
 fpQhRQs7l7kG7+rlDnGvI/jezv1P94WJkdgmCjGACVpzBXU0jvpo+sjhlaxiW7hj
 C5lrxMdMtgi0QYnbJqopR9HVYTE5KOpZFyw9e7cfYqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=5euric
 zBNHgvO+QkGvKaxx3LEAQ+A5gmsFTqDV9t2VE=; b=jR5+jUM1p7trulT+NtIoSG
 RIV0hjnnqg08/swNFfdU/fz6TZmx6xGAIewN7rTkT9qRPwK1jbwmhwp0/qLXIMrX
 bjPg3xHKciC8Y9/njClzJBqZxmss2Ra5tf9WuyCZym/PLFqiPQRg2LLlfAHtJ/d8
 a6DCasahhqk0dQn3H0ezDlQjY+DCW5HfTgpDtPWVIANdwOZQnNJ4J4+qTYa0qzQy
 c8jO4HvIQSLCakg/gVHB1LrPmw11KWvytwUqi+eZcVtDAA7cEDzCoPFG7xkOVf7O
 cUgqRSepwsB/OQXa/58c++vB7xYUmZtwe4DWnCwPJo8tGqnGBW5+0r/44Kgbs+qw
 ==
X-ME-Sender: <xms:2MQFXxgEzegge4Avo9LDEsQoj7OXbJszPiUfBa2rvRQ9EPVRjkRxuQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrudejgdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgrshhh
 ihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
 eqnecuggftrfgrthhtvghrnhepvdevgfevudfhledukeefteelleeghfffkeeludehtedu
 gedvtddttefhtdegleegnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdprghlshgrqd
 hprhhojhgvtghtrdhorhhgnecukfhppedukedtrddvfeehrdefrdehgeenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:2MQFX2BqDi-iOAlvT-5Fspgs0I0_jPB7jfXEHhNCCMaciscyiXYG4g>
 <xmx:2MQFXxHjlUQ0HilrIBG-bhPF40ODlwe4l-HsjdWLhDfT0PLIuKIi3Q>
 <xmx:2MQFX2RgYjTWc-ic4kwT4QvjNtzHzQcvowUYGvhQIWTbCApeUM_hKQ>
 <xmx:2MQFX58lmYflQejM40MiUsjJNEVIBVFIpi4lzNmdyqSHVe20Z0Fhlw>
Received: from workstation (ad003054.dynamic.ppp.asahi-net.or.jp
 [180.235.3.54])
 by mail.messagingengine.com (Postfix) with ESMTPA id 83EE33280071;
 Wed,  8 Jul 2020 09:06:30 -0400 (EDT)
Date: Wed, 8 Jul 2020 22:06:28 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH v3] firewire: Remove function callback casts
Message-ID: <20200708130628.GA21753@workstation>
Mail-Followup-To: Oscar Carter <oscar.carter@gmx.com>,
 Kees Cook <keescook@chromium.org>,
 Stefan Richter <stefanr@s5r6.in-berlin.de>,
 kernel-hardening@lists.openwall.com,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <20200530090839.7895-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200530090839.7895-1-oscar.carter@gmx.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [64.147.123.20 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jtAAo-00HJJB-Of
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 Kees Cook <keescook@chromium.org>, kernel-hardening@lists.openwall.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

I'm sorry to be late but I was stuck at my work for ALSA control
service programs for audio and music units on IEEE 1394 bus[1].

On Sat, May 30, 2020 at 11:08:39AM +0200, Oscar Carter wrote:
> In 1394 OHCI specification, Isochronous Receive DMA context has several
> modes. One of mode is 'BufferFill' and Linux FireWire stack uses it to
> receive isochronous packets for multiple isochronous channel as
> FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL.
> 
> The mode is not used by in-kernel driver, while it's available for
> userspace. The character device driver in firewire-core includes
> cast of function callback for the mode since the type of callback
> function is different from the other modes. The case is inconvenient
> to effort of Control Flow Integrity builds due to
> -Wcast-function-type warning.
> 
> This commit removes the cast. A static helper function is newly added
> to initialize isochronous context for the mode. The helper function
> arranges isochronous context to assign specific callback function
> after call of existent kernel API. It's noticeable that the number of
> isochronous channel, speed, and the size of header are not required for
> the mode. The helper function is used for the mode by character device
> driver instead of direct call of existent kernel API.
> 
> The same goal can be achieved (in the ioctl_create_iso_context function)
> without this helper function as follows:
> - Call the fw_iso_context_create function passing NULL to the callback
>   parameter.
> - Then setting the context->callback.sc or context->callback.mc
>   variables based on the a->type value.
> 
> However using the helper function created in this patch makes code more
> clear and declarative. This way avoid the call to a function with one
> purpose to achieved another one.
> 
> Co-developed-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
> Co-developed-by: Stefan Richter <stefanr@s5r6.in-berlin.de>
> Signed-off-by: Stefan Richter <stefanr@s5r6.in-berlin.de>
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
> Hi,
> 
> this is another proposal to achieved the goal of remove function callback
> cast start by me with the first [1] and second [2] versions, and followed
> by the work of Takashi Sakamoto with his first [3] and second [4] versions,
> and the code of Stefan Richter [5].
> 
> The purpose of this third version is to put together all the work done
> until now following the comments of all reviewed patches.
> 
> I've added the "Co-developed-by" and "Signed-off-by" tags to give credit to
> Takashi Sakamoto and Stefan Richter if there are no objections.
 
In my opinion, it's no need to add my and Stefan's sign-off tag to patch
in which you firstly wrote even if it includes ideas from the others ;)

> Changelog v1->v2
> -Set explicity to NULL the "ctx->callback.sc" variable and return an error
>  code in "fw_iso_context_create" function if both callback parameters are
>  NULL as Lev R. Oshvang suggested.
> -Modify the commit changelog accordingly.
> 
> Changelog v2->v3
> -Put togeher all the work done in different patches by different authors.
> -Modify the previous work following the comments in the reviewed patches.
> 
> [1] https://lore.kernel.org/lkml/20200516173934.31527-1-oscar.carter@gmx.com/
> [2] https://lore.kernel.org/lkml/20200519173425.4724-1-oscar.carter@gmx.com/
> [3] https://lore.kernel.org/lkml/20200520064726.31838-1-o-takashi@sakamocchi.jp/
> [4] https://lore.kernel.org/lkml/20200524132048.243223-1-o-takashi@sakamocchi.jp/
> [5] https://lore.kernel.org/lkml/20200525015532.0055f9df@kant/
> 
>  drivers/firewire/core-cdev.c | 32 ++++++++++++++++++++++++++------
>  include/linux/firewire.h     | 11 +++++++----
>  2 files changed, 33 insertions(+), 10 deletions(-)

Anyway this patch looks good to me. I test this patch with libhinoko and
find no regression.

Reviewed-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Testeb-by: Takashi Sakamoto<o-takashi@sakamocchi.jp>


[1] [RFT] ALSA control service programs for Digidesign Digi 002/003 family
and Tascam FireWire series
https://mailman.alsa-project.org/pipermail/alsa-devel/2020-July/170331.html

Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
