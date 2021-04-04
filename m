Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4E9353726
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Apr 2021 09:09:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lSwsk-0001gi-GY; Sun, 04 Apr 2021 07:09:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <zheyuma97@gmail.com>) id 1lSwsj-0001ga-Cx
 for linux1394-devel@lists.sourceforge.net; Sun, 04 Apr 2021 07:09:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8YY/LP5y2cdvCXrY+pPz6DkPVR19fFAUQuaCYLMQZps=; b=KBwUDYTtJwteRLfHNLZEnEj06K
 YbvqhwQwJkOabwOOqNncnSbCvzH/Z1q5uRJUKkVZn/i9JkWdPxDM4huMyep3cwF2QXrj8Ph6TKi3t
 YuEGG+sfYmCjrLIoscRWVi09FnGJV0rg0aMWYhezuhP99o1kSfDOtHwiIM1CCJ/8MJI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8YY/LP5y2cdvCXrY+pPz6DkPVR19fFAUQuaCYLMQZps=; b=ahM8y1ieoLNPHR4RcxSZmrc1z2
 w4FoFbFmeqH0zooFtW103tUTkNHtYmySiqLlSW4OnF6+38TfFdInq1epWQbcaRnwKezRPVzbbosMw
 cGkngyVpbktAfC3Z09Yx43yP/I0YzYH8lQ74/WxI6S1pVP8z8B6+7mp9Z75+PVQ29oSM=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lSwsg-00FA2b-Mg
 for linux1394-devel@lists.sourceforge.net; Sun, 04 Apr 2021 07:09:13 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 g8-20020a9d6c480000b02901b65ca2432cso8737847otq.3
 for <linux1394-devel@lists.sourceforge.net>;
 Sun, 04 Apr 2021 00:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8YY/LP5y2cdvCXrY+pPz6DkPVR19fFAUQuaCYLMQZps=;
 b=RmFv7BWOXHxjKGwpMqPXn2J2fhXB/501VL5ti75tXOPNdTPZIdTuejiEaRd/+xLNtz
 ek9/qU2OqrCHy33aRZEJcE9FZTD8FVfTD0FoUOBeVKfljK9eIx50r9vf5iL06E8yqHHD
 1/RpISGKZ5CFqmJjRv+WxK9B+b4+He4imsStDSCXvfVBSYN4qw/qThFvu7I1/MvMRrhX
 d34ETlxbI5qazpJbwPp6Bwim+D6RbIGoLtlPzHOdTL7kLgWUJMUKFBCcOg4Frxj12U9P
 srenPcbz+fOmPduuhBOvdR62HCk1vr2+R/W9RsDzk+AexBzEHhG8rO6ixzucEhW40/5O
 r18A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8YY/LP5y2cdvCXrY+pPz6DkPVR19fFAUQuaCYLMQZps=;
 b=eqp34Qn0AYspdFNAyEbOmepQ/HG7D11vgFYwmTDB5XIW/0a7gaSuWdJr+W3fif8jgs
 pQSnefaMEjzAEm0U3/Qzdq4IOHsV55VMYWBptVs08+erBEz69PDIJuG0ZbbgfCVkwHoX
 QvBNDS47/48+GGz90XQgV9n4JaY9CJqpWby6ytjFSAz9m27YZ57mUggEHlVOnWKbbycg
 ChVRph0Bmj43AljGPVXvziT60cSyNb9O1qweslew86TvDG9AoCZnYSimQk7Lj3yQTYck
 P2hlmz4d4ewhkFbypDU6f8E1YjJ3tHSjkkYw/F/KdDsAsT4SC21hUTApy3c+uHSIrj0K
 /0WA==
X-Gm-Message-State: AOAM530ZyXYq4FKoY8Z3d7kpfTEI6XezZKxc0tLCHih/cNrQ1l3yXZF9
 B3TbqnVX8h0YiPnStYTgvbYDmX9W2Vk0AAHyFkP8vKBgKf9A
X-Google-Smtp-Source: ABdhPJxQO6wnuOo8nWUMxLVBMGHzxAx79BEzYk/vx1SuvQ75Z3cDk1A0X4b3A2zo5t+op1KkzGvJHAhq2rqR6DibaLM=
X-Received: by 2002:a05:6830:1404:: with SMTP id
 v4mr17297579otp.2.1617520145206; 
 Sun, 04 Apr 2021 00:09:05 -0700 (PDT)
MIME-Version: 1.0
References: <1617433116-5930-1-git-send-email-zheyuma97@gmail.com>
 <CAHk-=wh+sw_cYnL2XyuhknOpOh1jEPURg-W=jS2CyW2=ud+zog@mail.gmail.com>
In-Reply-To: <CAHk-=wh+sw_cYnL2XyuhknOpOh1jEPURg-W=jS2CyW2=ud+zog@mail.gmail.com>
From: =?UTF-8?B?6ams5ZOy5a6H?= <zheyuma97@gmail.com>
Date: Sun, 4 Apr 2021 15:08:53 +0800
Message-ID: <CAMhUBjnhwGkg=x6TVg2Ly=pi9q1aBKBHhYWo_TmaOLGCp8sKLg@mail.gmail.com>
Subject: Re: [PATCH] firewire: nosy: Fix a use-after-free bug in nosy_ioctl()
To: Linus Torvalds <torvalds@linuxfoundation.org>
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (zheyuma97[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (zheyuma97[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lSwsg-00FA2b-Mg
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
Cc: Greg Kroah-Hartman <greg@kroah.com>,
 Security Officers <security@kernel.org>, linux1394-devel@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============6910008549555210718=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============6910008549555210718==
Content-Type: multipart/alternative; boundary="000000000000ac0f5e05bf2041a3"

--000000000000ac0f5e05bf2041a3
Content-Type: text/plain; charset="UTF-8"

Yes, It works for me.  I have tested this patch in my environment, and the
bug will not be triggered by applying this patch.
You're right, traversing the list is unnecessary and unsafe.
I have learned a lot and I will be more careful next time I submit a patch
to the kernel.

Thanks,

Zheyu Ma

--000000000000ac0f5e05bf2041a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail-gs" style=3D"margin:0=
px;padding:0px 0px 20px;width:1503px;font-family:Roboto,RobotoDraft,Helveti=
ca,Arial,sans-serif;font-size:medium"><div class=3D"gmail-"><div id=3D"gmai=
l-:me" class=3D"gmail-ii gmail-gt gmail-adP" style=3D"font-size:0.875rem;di=
rection:ltr;margin:8px 0px 0px;padding:0px"><div id=3D"gmail-:2xn" class=3D=
"gmail-a3s gmail-aiL" style=3D"overflow:hidden;font-variant-numeric:normal;=
font-variant-east-asian:normal;font-stretch:normal;font-size:small;line-hei=
ght:1.5;font-family:Arial,Helvetica,sans-serif"><div dir=3D"ltr"><div dir=
=3D"ltr"><div>Yes, It works for me.=C2=A0 I have tested this patch in my en=
vironment, and the bug will not be triggered by applying this patch.</div><=
div>You&#39;re right, traversing the list is unnecessary and unsafe.</div><=
div>I have learned a lot and I will be more careful next time I submit a pa=
tch to the kernel.</div><div><br></div><div>Thanks,</div><div><br></div><di=
v>Zheyu Ma</div></div></div></div></div></div></div></div></div>

--000000000000ac0f5e05bf2041a3--


--===============6910008549555210718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6910008549555210718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6910008549555210718==--

