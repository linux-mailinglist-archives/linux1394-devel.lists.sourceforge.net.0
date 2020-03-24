Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F754190E57
	for <lists+linux1394-devel@lfdr.de>; Tue, 24 Mar 2020 14:06:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jGjFw-0001GC-Fn; Tue, 24 Mar 2020 13:06:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <samokojere@remittance.com>) id 1jGjFv-0001G5-D5
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 13:06:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HoWrRjup2LzMpzWBhZG3XKu1q9eruPbw5yZzFqsR2p8=; b=jEWEgQZQAOQYjxQu90++zAZbx1
 r2B3TtDyzqOfyTDBDL031mU+DVqZ2eMQ/Xlq53IBKJazKtJKB8tAYQV4aCelUq6CmHd8Cp2nF3PLt
 M7mnb2Ix8YaiThpFbh5EKfGS66tgwL2M7+oTgSliC9KRJrrkamEQW4AQeKqHdrnY88SM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HoWrRjup2LzMpzWBhZG3XKu1q9eruPbw5yZzFqsR2p8=; b=e
 zDAdCKT1oYX4Dd5tEWXnvuFX8ihBN8ObJmwQnF3doFS0RJhVS9Vowwuds9ymAXCzZ7zjxEnKOCre/
 4WMAjSw+/8wAvDD1GXv05+ndg+kHMAhm5XFXHdgW7Jr1ADJ4A2pZ400soazIfPsHlcwMW3xpzGX7w
 d5IDIeJ3F4Re5Ss0=;
Received: from smtphost103.smtphosting.sk ([185.14.255.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jGjFu-005fCS-3l
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 13:06:07 +0000
Received: from remittance.com (unknown [180.214.239.142])
 by smtphost103.smtphosting.sk (Postfix) with ESMTP id CA68770B37
 for <linux1394-devel@lists.sourceforge.net>;
 Tue, 24 Mar 2020 13:11:42 +0100 (CET)
From: Mr.  Samuel Chukwuyem Okojere <samokojere@remittance.com>
To: linux1394-devel@lists.sourceforge.net
Subject: Your Fund. 
Date: 24 Mar 2020 05:11:40 -0700
Message-ID: <20200324051140.92E66CBFC17612A8@remittance.com>
MIME-Version: 1.0
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (samokojere250[at]gmail.com)
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [185.14.255.193 listed in psbl.surriel.com]
 0.0 HK_NAME_MR_MRS         No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
 0.0 FORM_FRAUD_5           Fill a form and many fraud phrases
 0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jGjFu-005fCS-3l
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
Reply-To: samokojere250@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Attention:

In consonance with the Central (Apex) Banks of West African 
countries (BENIN, BURKINA FASO, CAPE VERDE, COTE D'IVOIRE, 
GAMBIA, GHANA, GUINEA, GUINEA BISSAU, LIBERIA, MALI, NIGER, 
NIGERIA, SENEGAL, SIERRA LEONE,TOGO),we are committed to 
identifying beneficiaries/payments for eventual unconditional 
transfer to beneficiaries.

I, respectfully wish to draw your attention to the following that 
you have been identified as a beneficiary of outstanding Fund 
currently long overdue and to help / facilitate our on going 
exercise, preparing to the unconditional transfer of your funds, 
You need to urgently reconfirm your details and requisite 
information viz,

(a) Full names and address and telephone.
(b) Copy of your identity.
(c) Essential documents pertaining to your funds and your claim 
for payment.

Note:   You are quickly advised to stop communication with any 
other person whatsoever.Finally, endeavor to treat this mail as 
imperative and urgent and also to maintain confidentiality on it 
at all times and in all places until you have received your 
funds.

Finally, endeavor to treat this mail as imperative and urgent and 
also to maintain confidentiality on it at all times and in all 
places until you have received your funds.

Sincerely Yours,

Mr. Samuel Chukwuyem Okojere
Director,Payment Systems Management Department
Central Bank of Nigeria
Plot 33,Abubakar Tafawa Balewa Way 
Central Business District,Cadastral Zone,
Abuja,Federal Capital Territory,Nigeria 
P.M.B. 0187,Garki Abuja. 
Nigeria


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
